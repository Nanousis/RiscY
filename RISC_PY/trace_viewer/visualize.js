// visualize.js

// Pipeline stage colors
const pipelineColors = {
  decode:   "#FFA500", // Orange
  rename:   "#FFD700", // Gold
  issue:    "#FF69B4", // Hot Pink
  dispatch: "#20B2AA", // Light Sea Green
  resolve:  "#E57373", // Soft Red
  commit:   "#1C75BC", // Medium Blue
};

const eventTypeColors = {
    REGISTER_WRITE: "#ADD8E6", // Light Green
    MEMORY_READ:   "#FFB6C1", // Light Blue
    MEMORY_WRITE:  "#fff5b6", // Light Blue
    FLOW_CHANGE:   "#c8ffc8", // Light Pink
}
// Ordered list of pipeline stages
const pipelineStages = ["decode", "rename", "issue", "dispatch", "resolve", "commit"];

// ABI register names x0–x31
const regNames = [
  "zero","ra","sp","gp","tp",
  "t0","t1","t2",
  "s0","s1",
  "a0","a1","a2","a3","a4","a5","a6","a7",
  "s2","s3","s4","s5","s6","s7","s8","s9","s10","s11",
  "t3","t4","t5","t6"
];
let registerValues = new Array(32).fill(0);
// layout parameters
let gridStart   = 200;
let gridStartY  = 50;
let gridWidth   = 12;
let gridHeight  = 24;
let textWidth   = 400;
let regBaseX    = gridWidth * 2;
let regSpacing  = 60;
let regFontSize = 12;
let showAllRegisters = true;
let showgrid = true;
window.onload = function () {
    const toolbar = document.createElement('div');
    toolbar.style.display = 'flex';
    toolbar.style.alignItems = 'center';
    toolbar.style.padding = '8px';
    toolbar.style.background = '#f0f0f0';
    toolbar.style.borderBottom = '1px solid #ccc';

    const ipc = pipeline.length/(pipeline[pipeline.length - 1].status.commit - pipeline[0].status.commit);
    const titleText = `IPC: ${ipc.toFixed(2)} Dhrystone ${pipeline.length} instructions.`;
    const title_label = document.createElement('label');
    title_label.classList.add('px-3');
    title_label.classList.add('fw-bold');
    title_label.textContent = titleText;
    toolbar.append(title_label);

    // Grid width control
    const widthLabel = document.createElement('label');
    widthLabel.textContent = 'Grid Width:';
    const widthInput = document.createElement('input');
    widthInput.type = 'number'; widthInput.value = gridWidth;
    widthInput.style.margin = '0 12px';
    toolbar.append(widthLabel, widthInput);

    // Grid height control
    const heightLabel = document.createElement('label');
    heightLabel.textContent = 'Grid Height:';
    const heightInput = document.createElement('input');
    heightInput.type = 'number'; heightInput.value = gridHeight;
    heightInput.style.margin = '0 12px';
    toolbar.append(heightLabel, heightInput);

    const showAllRegistersLabel = document.createElement('label');
    showAllRegistersLabel.textContent = 'Show All Registers:';
    showAllRegistersLabel.style.marginLeft = '12px';
    const showAllRegistersToggle = document.createElement('input');
    showAllRegistersToggle.type = 'checkbox';
    showAllRegistersToggle.checked = showAllRegisters; // default on
    showAllRegistersToggle.style.margin = '0 6px';
    // append into the toolbar
    toolbar.append(showAllRegistersLabel, showAllRegistersToggle);
    showAllRegistersToggle.addEventListener('change', () => {
        showAllRegisters = showAllRegistersToggle.checked;
        refresh();
    });

    const gridToggleLabel = document.createElement('label');
    gridToggleLabel.textContent = 'Show Grid:';
    gridToggleLabel.style.marginLeft = '12px';

    const gridToggle = document.createElement('input');
    gridToggle.type    = 'checkbox';
    gridToggle.checked = true;           // default on
    gridToggle.style.margin = '0 6px';

    // append into the toolbar
    toolbar.append(gridToggleLabel, gridToggle);

    // respond to clicks
    gridToggle.addEventListener('change', () => {
        // gridLayer is the Konva.Layer() you drew your grid on
        showgrid = gridToggle.checked;
        gridLayer.visible(gridToggle.checked);
        // redraw now that visibility changed
        gridLayer.batchDraw();
    });

    ////////////////////////////////////
    // HERE IS WHERE THE MAGIC HAPPENS//
    ////////////////////////////////////
    document.body.insertBefore(toolbar, document.getElementById('konva-container'));

    // Update handlers
    widthInput.addEventListener('change', () => {
        gridWidth = parseInt(widthInput.value, 10) || gridWidth;
        refresh();
    });
    heightInput.addEventListener('change', () => {
        gridHeight = parseInt(heightInput.value, 10) || gridHeight;
        // also update layer y-offset
        instructionLayer.y(gridStartY);
        refresh();
    });
    // create the stage
    const stage = new Konva.Stage({
        container: "konva-container",
        width:  window.innerWidth,
        height: window.innerHeight,
    });



    // layers
    const gridLayer = new Konva.Layer();
    gridLayer.add(new Konva.Shape({
    sceneFunc: (ctx, shape) => {
        // 1) find the world‐coords of the screen’s corners
        const inv = stage.getAbsoluteTransform().copy().invert();
        const topLeft     = inv.point({ x: 0,               y: 0             });
        const bottomRight = inv.point({ x: stage.width(),   y: stage.height() });

        ctx.beginPath();

        // 2) vertical lines: start at the first multiple of gridWidth ≥ topLeft.x
        let startX = gridStart + Math.floor((topLeft.x - gridStart)/gridWidth) * gridWidth;
        for (let x = startX; x <= bottomRight.x; x += gridWidth) {
        ctx.moveTo(x, topLeft.y);
        ctx.lineTo(x, bottomRight.y);
        }

        // 3) horizontal lines:
        let startY = gridStartY + Math.floor((topLeft.y - gridStartY)/gridHeight) * gridHeight;
        for (let y = startY; y <= bottomRight.y; y += gridHeight) {
        ctx.moveTo(topLeft.x, y);
        ctx.lineTo(bottomRight.x, y);
        }

        // 4) stroke once
        ctx.strokeShape(shape);
    },
    stroke:     "#ddd",
    strokeWidth: 1,
    }));
    stage.add(gridLayer);
    const instructionLayer = new Konva.Layer();
    const legendLayer      = new Konva.Layer();
    instructionLayer.y(gridStartY);

  // draw legend
    pipelineStages.forEach((stageName, idx) => {
        const color = pipelineColors[stageName];
        const xBase = idx * (64 + gridWidth + 8);
        legendLayer.add(new Konva.Rect({
        x:           xBase,
        y:           0,
        width:       gridWidth,
        height:      gridHeight,
        fill:        color,
        stroke:      "black",
        strokeWidth: 1
        }));
        legendLayer.add(new Konva.Text({
        x:          xBase + gridWidth + 4,
        y:          (gridHeight - 16) / 2,
        text:       stageName,
        fontFamily: "Calibri",
        fontSize:   16,
        fill:       "black",
        width:      64,
        align:      "left"
        }));
    });

  stage.add(legendLayer);
  stage.add(instructionLayer);

  // helper to compute visible row range
  function getVisibleRowRange() {
    const inv = stage.getAbsoluteTransform().copy().invert();
    const topLeft     = inv.point({ x: 0,               y: 0             });
    const bottomRight = inv.point({ x: stage.width(),   y: stage.height() });
    const y0 = topLeft.y  - gridStartY;
    const y1 = bottomRight.y - gridStartY;
    const startRow = Math.max(0, Math.floor(y0 / gridHeight));
    const endRow   = Math.min(pipeline.length,
                       Math.ceil(y1  / gridHeight));
    return { startRow, endRow };
  }

  // draw only rows [startRow..endRow)
  function drawRows(startRow, endRow) {
    instructionLayer.destroyChildren();
    instructionLayer.y(gridStartY);
    const scale = stage.scaleX();
    const showDetails = scale >= 0.4;

    const stagesScale = showDetails ? 1 : Math.floor(1 / scale);
    for (let i = startRow; i < endRow; i+=stagesScale) {
      const instr = pipeline[i];
      const rowY  = i * gridHeight;
      // pipeline stage boxes
      let commitX = 0;
      pipelineStages.forEach((stageName, idx) => {
        const startCycle = instr.status[stageName];
        if (startCycle == null) return;

        // determine where this stage ends
        const nextStage = pipelineStages[idx+1];
        const nextCycle = nextStage ? instr.status[nextStage] : null;
        const endCycle  = (nextCycle != null)
                          ? nextCycle
                          : (startCycle + 1);
        const x0         = startCycle * gridWidth + gridStart;
        const w          = (endCycle - startCycle) * gridWidth * stagesScale;

        // record commitX for later annotations
        if (stageName === 'commit') {
          commitX = endCycle * gridWidth * stagesScale + gridStart;
        }

        // draw one long rect from startCycle to endCycle
        instructionLayer.add(new Konva.Rect({
          x:      x0,
          y:      rowY,
          width:  w,
          height: gridHeight * stagesScale,
          fill:        pipelineColors[stageName],
          stroke:      'black',
          strokeWidth: 1,
        }));
        if (endCycle - startCycle > 1) {
          const fontSize = 16 * stagesScale;
          const label = new Konva.Text({
            text:      `${endCycle-startCycle}`,
            fontSize:  fontSize,
            fontFamily:'Calibri',
            fill:      'black',
            // center the text horizontally, and place it just above the block:
            x:         x0 + w/2,
            y:         rowY + (fontSize/2),
            align:     'center',
          });
          // offsetX so align:'center' actually centers on x
          label.offsetX(label.width()/2);
          instructionLayer.add(label);
        }
      });
      // disassembly + PC text
      const decodeCycle = instr.status.decode;
      const textX       = (decodeCycle - 1) * (gridWidth) + gridStart - (textWidth*stagesScale);
      const fontSize    = 16*stagesScale;
      const textY       = rowY + (gridHeight - fontSize) / 2;
      instructionLayer.add(new Konva.Text({
        x:        textX,
        y:        textY,
        text:     `${i}-> PC: 0x${instr.pc.toString(16)} | ${instr.disass}`,
        fontSize: fontSize,
        fontFamily: 'Calibri',
        fill:     'black',
        width:    textWidth*stagesScale,
        align:    'right',
      }));
        if (!showDetails) {
        continue;
        }

      // event-specific annotation
      if (instr.event_t === 'REGISTER_WRITE') {
        if(instr.reg_changed != 0){
            registerValues[instr.reg_changed] = instr.reg_val;
        } 
        else {
            instr.reg_val = 0;
        }
        let xOffset = 0;
        if(showAllRegisters){
            registerValues.forEach((val, idx) => {
                console.log(val);
              const txt = new Konva.Text({
                x:        commitX + regBaseX + xOffset,
                y:        rowY + (gridHeight - regFontSize) / 2,
                text:     `${regNames[idx]}=${val.toString(16)}`,
                fontSize: regFontSize,
                fontFamily: 'monospace',
                fill:     'black'
              });
              const padding = 5;
              instructionLayer.add(new Konva.Rect({
                x:           txt.x() - padding,
                y:           txt.y() - padding,
                width:       txt.width() + padding*2,
                height:      txt.height() + padding*2,
                stroke:      'black',
                strokeWidth: 1,
                fill:        idx === instr.reg_changed ? eventTypeColors.REGISTER_WRITE : 'transparent',
              }));
              instructionLayer.add(txt);
              xOffset += txt.width() + padding*2;
            });
        }
        else {
            const regText = new Konva.Text({
              x:        commitX + regBaseX,
              y:        rowY + (gridHeight - regFontSize) / 2,
              text:     `${regNames[instr.reg_changed]}=${instr.reg_val.toString(16)}`,
              fontSize: regFontSize,
              fontFamily: 'monospace',
              fill:     'black'
            });
            const padding = 5;
            instructionLayer.add(new Konva.Rect({
              x:           regText.x() - padding,
              y:           regText.y() - padding,
              width:       regText.width() + padding*2,
              height:      regText.height() + padding*2,
              stroke:      'black',
              strokeWidth: 1,
              fill:        eventTypeColors.REGISTER_WRITE,
            }));
            instructionLayer.add(regText);
        }

      } else if (instr.event_t === 'MEMORY_READ' || instr.event_t === 'MEMORY_WRITE') {
        const memText = new Konva.Text({
          x:        commitX + regBaseX,
          y:        rowY + (gridHeight - regFontSize) / 2,
          text:     `${instr.event_t} addr=0x${instr.mem_addr.toString(16)} val=0x${instr.mem_val.toString(16)}`,
          fontSize: regFontSize,
          fontFamily: 'monospace',
          fill:     'black'
        });
        const padding = 5;
        instructionLayer.add(new Konva.Rect({
          x:           memText.x() - padding,
          y:           memText.y() - padding,
          width:       memText.width() + padding*2,
          height:      memText.height() + padding*2,
          stroke:      'black',
          strokeWidth: 1,
          fill:        instr.event_t === 'MEMORY_WRITE' ? eventTypeColors.MEMORY_WRITE : eventTypeColors.MEMORY_READ,
        }));
        instructionLayer.add(memText);

      } else if (instr.event_t === 'FLOW_CHANGE') {
        const flowText = new Konva.Text({
          x:        commitX + regBaseX,
          y:        rowY + (gridHeight - regFontSize) / 2,
          text:     `FLOW CHANGE to PC: 0x${instr.new_pc.toString(16)}`,
          fontSize: regFontSize,
          fontFamily: 'monospace',
          fill:     'black'
        });
        const padding = 5;
        instructionLayer.add(new Konva.Rect({
          x:           flowText.x() - padding,
          y:           flowText.y() - padding,
          width:       flowText.width() + padding*2,
          height:      flowText.height() + padding*2,
          stroke:      'black',
          strokeWidth: 1,
          fill:        eventTypeColors.FLOW_CHANGE,
        }));
        instructionLayer.add(flowText);
      }
    }

    instructionLayer.batchDraw();
  }

    // refresh view
    function refresh() {
        const scale = stage.scaleX();          // assume uniform X/Y
        gridLayer.visible(scale >= 0.4 && showgrid);
        gridLayer.batchDraw();

        const { startRow, endRow } = getVisibleRowRange();
        drawRows(startRow, endRow);
    }

    // initial draw + hooks
    refresh();
    const container = stage.container();
    let lastDist = 0;

    container.addEventListener('touchmove', e => {
    if (e.touches.length !== 2) return;
    e.preventDefault();
    const [t1, t2] = e.touches;
    const p1 = { x: t1.clientX, y: t1.clientY };
    const p2 = { x: t2.clientX, y: t2.clientY };
    const dist = Math.hypot(p1.x - p2.x, p1.y - p2.y);

    if (lastDist) {
        const mid = { x: (p1.x + p2.x)/2, y: (p1.y + p2.y)/2 };
        const oldScale = stage.scaleX();
        const newScale = oldScale * (dist/lastDist);

        stage.scale({ x: newScale, y: newScale });
        const mousePointTo = {
        x: (mid.x - stage.x()) / oldScale,
        y: (mid.y - stage.y()) / oldScale,
        };
        stage.position({
        x: mid.x - mousePointTo.x * newScale,
        y: mid.y - mousePointTo.y * newScale,
        });
        refresh();
    }
    lastDist = dist;
    }, { passive: false });

    container.addEventListener('touchend', e => {
    if (e.touches.length < 2) lastDist = 0;
    });
    stage.on('pointerup', refresh);
    stage.on('wheel', refresh);
    
    window.addEventListener('resize', () => {
        stage.size({ width: window.innerWidth, height: window.innerHeight });
        refresh();
    });

    // panning & zoom helper
    addPanning(stage);
};

// panning & zoom outside window.onload
function addPanning(stage) {
  let dragStart = null, stageStart = null;
  stage.on('pointerdown', () => {
    stageStart = { x: stage.x(), y: stage.y() };
    dragStart  = stage.getPointerPosition();
  });
  stage.on('pointerup', () => { dragStart = null; });
  stage.on('pointermove', () => {
    if (!dragStart) return;
    const pos = stage.getPointerPosition();
    stage.position({
      x: stageStart.x + (pos.x - dragStart.x),
      y: stageStart.y + (pos.y - dragStart.y),
    });
    stage.batchDraw();
  });
  stage.on('wheel', e => {
        e.evt.preventDefault();
        const oldScale = stage.scaleX();
        const pointer  = stage.getPointerPosition();
        const scaleBy  = 1.05;
        const newScale = e.evt.deltaY > 0
            ? oldScale / scaleBy
            : oldScale * scaleBy;
        stage.scale({ x: newScale, y: newScale });
        const mousePointTo = {
        x: (pointer.x - stage.x()) / oldScale,
        y: (pointer.y - stage.y()) / oldScale,
        };
        stage.position({
        x: pointer.x - mousePointTo.x * newScale,
        y: pointer.y - mousePointTo.y * newScale,
        });
        stage.batchDraw();
  });
}
