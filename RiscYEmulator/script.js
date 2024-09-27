

var instructions = "40000413_04040493_00000293_00040313_00128293_00530023_00130313_fe934ae3_fedff06f";
var instructionMemory;
var instructionsHex;
var dataMemory = new Array(dataSize).fill(0);
var data = "deadbeaf_ffffffff_aaaaaaaa";
var cpuIntervalID; // Global variable to store the interval ID



window.onload = function() {
  mainLoop();
  renderFrame();
  loadPresetButtons(); // Load preset buttons on page load
};
var cpuIntervalID;
function StartCPU(){
  if (cpuIntervalID) {
    clearInterval(cpuIntervalID);
  }
  // Get the interval timing from the input field
  var intervalInput = document.getElementById('intervalInput');
  var intervalTiming = parseInt(intervalInput.value);

  // Validate the input and set a default if invalid
  if (isNaN(intervalTiming) || intervalTiming < 1) {
    intervalTiming = 1; // Default to 1 ms
  }

  // Start the CPU execution with the specified interval
  cpuIntervalID = setInterval(CPU, intervalTiming);
}
function StopCPU(){
  if (cpuIntervalID) {
    clearInterval(cpuIntervalID);
    cpuIntervalID = null; // Reset the interval ID
  }
}


var textFont = "00000000000000000000000000000000_00007E81A58181BD9981817E00000000_00007EFFDBFFFFC3E7FFFF7E00000000_000000006CFEFEFEFE7C381000000000_0000000010387CFE7C38100000000000_000000183C3CE7E7E718183C00000000_000000183C7EFFFF7E18183C00000000_000000000000183C3C18000000000000_FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF_00000000003C664242663C0000000000_FFFFFFFFFFC399BDBD99C3FFFFFFFFFF_00001E0E1A3278CCCCCCCC7800000000_00003C666666663C187E181800000000_00003F333F3030303070F0E000000000_00007F637F6363636367E7E6C0000000_0000001818DB3CE73CDB181800000000_0080C0E0F0F8FEF8F0E0C08000000000_0002060E1E3EFE3E1E0E060200000000_0000183C7E1818187E3C180000000000_00006666666666666600666600000000_00007FDBDBDB7B1B1B1B1B1B00000000_007CC660386CC6C66C380CC67C000000_0000000000000000FEFEFEFE00000000_0000183C7E1818187E3C187E30000000_0000183C7E1818181818181800000000_0000181818181818187E3C1800000000_0000000000180CFE0C18000000000000_00000000003060FE6030000000000000_000000000000C0C0C0FE000000000000_00000000002466FF6624000000000000_000000001038387C7CFEFE0000000000_00000000FEFE7C7C3838100000000000_00000000000000000000000000000000_0000183C3C3C18181800181800000000_00666666240000000000000000000000_0000006C6CFE6C6C6CFE6C6C00000000_18187CC6C2C07C060686C67C18180000_00000000C2C60C183060C68600000000_0000386C6C3876DCCCCCCC7600000000_00303030600000000000000000000000_00000C18303030303030180C00000000_000030180C0C0C0C0C0C183000000000_0000000000663CFF3C66000000000000_000000000018187E1818000000000000_00000000000000000018181830000000_000000000000007E0000000000000000_00000000000000000000181800000000_0000000002060C183060C08000000000_00007CC6C6CEDEF6E6C6C67C00000000_00001838781818181818187E00000000_00007CC6060C183060C0C6FE00000000_00007CC606063C060606C67C00000000_00000C1C3C6CCCFE0C0C0C1E00000000_0000FEC0C0C0FC060606C67C00000000_00003860C0C0FCC6C6C6C67C00000000_0000FEC606060C183030303000000000_00007CC6C6C67CC6C6C6C67C00000000_00007CC6C6C67E0606060C7800000000_00000000181800000018180000000000_00000000181800000018183000000000_000000060C18306030180C0600000000_00000000007E00007E00000000000000_0000006030180C060C18306000000000_00007CC6C60C18181800181800000000_00007CC6C6C6DEDEDEDCC07C00000000_000010386CC6C6FEC6C6C6C600000000_0000FC6666667C66666666FC00000000_00003C66C2C0C0C0C0C2663C00000000_0000F86C6666666666666CF800000000_0000FE6662687868606266FE00000000_0000FE6662687868606060F000000000_00003C66C2C0C0DEC6C6663A00000000_0000C6C6C6C6FEC6C6C6C6C600000000_00003C18181818181818183C00000000_00001E0C0C0C0C0CCCCCCC7800000000_0000E666666C78786C6666E600000000_0000F06060606060606266FE00000000_0000C3E7FFFFDBC3C3C3C3C300000000_0000C6E6F6FEDECEC6C6C6C600000000_00007CC6C6C6C6C6C6C6C67C00000000_0000FC6666667C60606060F000000000_00007CC6C6C6C6C6C6D6DE7C0C0E0000_0000FC6666667C6C666666E600000000_00007CC6C660380C06C6C67C00000000_0000FFDB991818181818183C00000000_0000C6C6C6C6C6C6C6C6C67C00000000_0000C3C3C3C3C3C3C3663C1800000000_0000C3C3C3C3C3DBDBFF666600000000_0000C3C3663C18183C66C3C300000000_0000C3C3C3663C181818183C00000000_0000FFC3860C183060C1C3FF00000000_00003C30303030303030303C00000000_00000080C0E070381C0E060200000000_00003C0C0C0C0C0C0C0C0C3C00000000_10386CC6000000000000000000000000_00000000000000000000000000FF0000_30301800000000000000000000000000_0000000000780C7CCCCCCC7600000000_0000E06060786C666666667C00000000_00000000007CC6C0C0C0C67C00000000_00001C0C0C3C6CCCCCCCCC7600000000_00000000007CC6FEC0C0C67C00000000_0000386C6460F060606060F000000000_000000000076CCCCCCCCCC7C0CCC7800_0000E060606C7666666666E600000000_00001818003818181818183C00000000_00000606000E06060606060666663C00_0000E06060666C78786C66E600000000_00003818181818181818183C00000000_0000000000E6FFDBDBDBDBDB00000000_0000000000DC66666666666600000000_00000000007CC6C6C6C6C67C00000000_0000000000DC66666666667C6060F000_000000000076CCCCCCCCCC7C0C0C1E00_0000000000DC7666606060F000000000_00000000007CC660380CC67C00000000_0000103030FC30303030361C00000000_0000000000CCCCCCCCCCCC7600000000_0000000000C3C3C3C3663C1800000000_0000000000C3C3C3DBDBFF6600000000_0000000000C3663C183C66C300000000_0000000000C6C6C6C6C6C67E060CF800_0000000000FECC183060C6FE00000000_00000E18181870181818180E00000000_00001818181800181818181800000000_0000701818180E181818187000000000_000076DC000000000000000000000000_0000000010386CC6C6C6FE0000000000";
// Split the font data into an array
var fontBitmaps = textFont.split('_');

// Initialize textMemory as an object
var textMemory = {};

// Populate textMemory with font bitmaps indexed by ASCII codes
for (var i = 0; i < fontBitmaps.length; i++) {
  textMemory[i] = fontBitmaps[i];
}
var charMemory = new Array(64).fill(32); // Initialize with spaces (ASCII code 32)

// JavaScript
function renderFrame() {
  var canvas = document.getElementById('renderWindow');
  var ctx = canvas.getContext('2d');
  const width = canvas.width;  // Should be 128
  const height = canvas.height; // Should be 64
  let imageData = ctx.createImageData(width, height); // Create a blank imageData object

  const gridWidth = 8;  // Each character is 8 pixels wide
  const gridHeight = 16; // Each character is 16 pixels tall

  let cursorX = 0; // X position where the next character will be drawn
  let cursorY = 0; // Y position where the next line starts

  for (let i = 0; i < charMemory.length; i++) {
    let asciiCode = charMemory[i];

    // Get the font bitmap for this character
    let textDataStr = textMemory[asciiCode];
    if (!textDataStr) {
      // If character is not found, use a space character
      textDataStr = textMemory[32]; // ASCII code 32 is space
    }
    let textData = BigInt('0x' + textDataStr); // Convert to BigInt for bitwise operations

    // Check if we need to move to the next line
    if (cursorX + gridWidth > width) {
      cursorX = 0;
      cursorY += gridHeight;
      // Check if we've run out of vertical space
      if (cursorY + gridHeight > height) {
        break; // Stop rendering if there's no more space
      }
    }

    // Render the character bitmap onto the canvas
    for (let y = 0; y < height; y++) {
      // Extract 8 bits (1 byte) for each row
      let rowBits = Number((textData >> BigInt((gridHeight - 1 - y) * gridWidth)) & BigInt(0xFF));

      for (let x = 0; x < width; x++) {
        let bit = (rowBits >> (gridWidth - 1 - x)) & 1; // Get the current bit

        let pixelX = cursorX + x;
        let pixelY = cursorY + y;

        if (pixelX < width && pixelY < height) { // Ensure we don't overflow the canvas
          let index = (pixelY * width + pixelX) * 4;

          if (bit === 1) {
            imageData.data[index] = 255;     // Red
            imageData.data[index + 1] = 255; // Green
            imageData.data[index + 2] = 255; // Blue
            imageData.data[index + 3] = 255; // Alpha
          } else {
            imageData.data[index] = 0;       // Red
            imageData.data[index + 1] = 0;   // Green
            imageData.data[index + 2] = 0;   // Blue
            imageData.data[index + 3] = 255; // Alpha
          }
        }
      }
    }

    cursorX += gridWidth; // Move the cursor to the right for the next character
  }

  // Ensure the canvas size remains constant
  canvas.width = width;
  canvas.height = height;

  ctx.putImageData(imageData, 0, 0); // Render the imageData on the canvas
}

function loadPresetButtons() {
  var presetButtonsDiv = document.getElementById('presetButtons');

  presets.forEach(function(preset) {
    var button = document.createElement('button');
    button.className = 'btn btn-secondary my-1';
    button.innerText = preset.name;
    button.onclick = function() {
      loadPresetCode(preset);
    };
    presetButtonsDiv.appendChild(button);
  });
}

function loadPresetCode(preset) {
  var instructionsInput = document.getElementById('instructionsInput');
  instructionsInput.value = preset.code.trim();
  
  var assemblyCodeDisplay = document.getElementById('assemblyCodeDisplay');
  var assemblyMem = preset.code.trim().split('\n');
  var assemblyCode = '';
  for (let i = 0; i < assemblyMem.length; i++) {
    let instr = assemblyMem[i];
    let decoded = decodeInstruction(instr);
    assemblyCode += decoded + '\n';
  }
  if (assemblyCodeDisplay) {
    assemblyCodeDisplay.value = (assemblyCode || 'No assembly code available.').trim();
  }

  ResetCPU(); // Optionally reset the CPU after loading new code
}


function loadFromHex(hex){
  if (!hex) {
    console.error("Error: hex is undefined or null.");
    return [];
  }

  var hexArray = [];
  if (Array.isArray(hex)) {
    // Process array of hex strings
    for(let i = 0; i < hex.length; i++) {
      let hexValue = hex[i];
      let intValue = parseInt(hexValue, 16);
      hexArray.push(intValue);
    }
  } else if (typeof hex === 'string') {
    // Process string of hex values separated by underscores
    let hexSplit = hex.split('_');
    for(let i = 0; i < hexSplit.length; i++) {
      let hexValue = hexSplit[i];
      let intValue = parseInt(hexValue, 16);
      hexArray.push(intValue);
    }
  } else {
    console.error("Error: hex is not a string or array.");
    return [];
  }
  return hexArray;
}

function loadInstructions(instr){
  let instructionsArray = instr.split('_');
  instructionMemory = [];
  instructionsHex=instr.split;
  for(let i = 0; i < instructionsArray.length; i++) {
    let hexValue = instructionsArray[i];
    let intValue = parseInt(hexValue, 16);  // Convert from hex to integer
    instructionMemory.push(intValue);  // Add to instructionMemory array
  }
}
var registerFile;
var PC = -4;
var prevInstr=null;
var currentInstr=null;
var nextInstr=null;

function mainLoop(){
    loadInstructions(instructions);
    initRegisterTable();
    ResetCPU();
}
function getBits(inBit, endBit, startBit) {
  if(inBit!=endBit){
    // Create a mask that selects the range of bits from startBit to endBit
    var binaryMask = (1 << (endBit - startBit + 1)) - 1;
    // Shift the input right by startBit and apply the mask
    var dataOut= (inBit >>> startBit) & binaryMask;
  }
  else{
    dataOut = (inBit >>> startBit) & 1;
  }
  return dataOut;
}
function ResetCPU(){
  // Get instructions from the textarea
  prevInstr="N/A";
  var instructionsInput = document.getElementById('instructionsInput').value;
  
  // Parse the instructions
  var instructionsArray = instructionsInput.trim().split('\n').map(function(line) {
    return line.trim();
  }).filter(function(line) {
    return line.length > 0;
  });
  instructionsHex = instructionsArray;
  // Load instructions
  instructionMemory = loadFromHex(instructionsArray);
  var assemblyCode = '';
  for (let i = 0; i < instructionsArray.length; i++) {
    let instr = instructionsArray[i];
    let decoded = decodeInstruction(instr);
    assemblyCode += decoded + '\n';
  }
  var assemblyCodeDisplay = document.getElementById('assemblyCodeDisplay');
  if (assemblyCodeDisplay) {
    assemblyCodeDisplay.value = (assemblyCode || 'No assembly code available.').trim();
  }
  dataMemory = loadFromHex(data);
  registerFile = new Array(32).fill(0);
  PC=-4;
  registerFile[2]=1024; // Stack Pointer
  for(let i=0;i<64;i++){
    charMemory[i]=32;
  }
  renderFrame();
  updateRegisterTable();
}
// setInterval(CPU,1);

function CPU(){
      // Instruction Fetch Stage 
      PC+=4;
      var instr   = instructionMemory[PC>>>2];
      var instrString = instr.toString(16);
      prevInstr=instrString;
    // console.log(decodeInstruction(instrStrings[PC>>>2]));
    // Instruction Decode Stage
    var opcode    = getBits(instr,6,0);
    var func3     = getBits(instr,14,12);
    var func7     = getBits(instr,31,25);
    var instr_rs1 = getBits(instr,19,15);
    var instr_rs2 = getBits(instr,24,20);
    var instr_rd  = getBits(instr,11,7);

    var signExtend = signExtendImmediate(getBits(instr,31,7),opcode);
    // console.log("instr:",instr);
    // console.log("opcode:",opcode);
    // console.log("func3:",func3);
    // console.log("func7:",func7);
    // console.log("instr_rs1:",instr_rs1);
    // console.log("instr_rs2:",instr_rs2);
    // console.log("instr_rd:",instr_rd);
    // console.log("signExtend:",signExtend);

    var aluOUT;
    // Control Unit Main
    switch(opcode){
    case R_FORMAT: 
      // Register to Register Format
      switch(func3){
        case FUNCT3_ADD_SUB: // 
            if(func7==FUNCT7_ADD){
              //console.log("ADD");
              aluOUT = registerFile[instr_rs1] + registerFile[instr_rs2];
            }
            else{
              //console.log("SUB");
              aluOUT = registerFile[instr_rs1] - registerFile[instr_rs2];
            }
          break;
        case FUNCT3_XOR: // SLL
            //console.log("XOR");
            aluOUT = registerFile[instr_rs1] ^ registerFile[instr_rs2];
          break;
        case FUNCT3_OR: // SLT
            //console.log("OR");
            aluOUT = registerFile[instr_rs1] | registerFile[instr_rs2];
          break;
        case FUNCT3_AND: // SLTU
            //console.log("AND");
            aluOUT = registerFile[instr_rs1] & registerFile[instr_rs2];
          break;
        case FUNCT3_SLL: // XOR
            //console.log("SLL");
            aluOUT = registerFile[instr_rs1] << registerFile[instr_rs2];
          break;
        case FUNCT3_SRL: // SRL
            if(func7==FUNCT7_SRL){
              //console.log("SRL");
              aluOUT = registerFile[instr_rs1] >>> registerFile[instr_rs2];
            }
            else{
              aluOUT = registerFile[instr_rs1] >> registerFile[instr_rs2];
            }
          break;
        case FUNCT3_SLT: // OR
            aluOUT = registerFile[instr_rs1]<registerFile[instr_rs2];
          break;
        case FUNCT3_SLTU: // AND
            //console.log("SLTU");
            aluOUT = (registerFile[instr_rs1]>>>0)<(registerFile[instr_rs2]>>>0);
          break;
        default:
            //console.log("R_FORMAT Default");
          break;
        }
        WriteRegister(instr_rd,aluOUT);
      // registerFile[instr_rd]=aluOUT;
      //console.log("Wrote :",registerFile[instr_rd]," on ",instr_rd);
		break;
		case I_COMP_FORMAT:
      switch(func3){
        case FUNCT3_ADDI: // ADD
            //console.log("ADD Immidiate");
            aluOUT = registerFile[instr_rs1] + signExtend;
          break;
        case FUNCT3_XORI: // SLL
            //console.log("XOR Immidiate");
            aluOUT = registerFile[instr_rs1] ^ signExtend;
          break;
        case FUNCT3_ORI: // SLT
            //console.log("OR Immidiate");
            aluOUT = registerFile[instr_rs1] | signExtend;

          break;
        case FUNCT3_ANDI: // SLTU
            //console.log("AND Immidiate");
            aluOUT = registerFile[instr_rs1] & signExtend;

          break;
        case FUNCT3_SLLI: // XOR
            //console.log("SLL Immidiate");
            aluOUT = registerFile[instr_rs1] << signExtend;
          break;
        case FUNCT3_SRLI: // SRL
          if(func7==FUNCT7_SRL){
            //console.log("SRL Immidiate");
            aluOUT = registerFile[instr_rs1] >>> signExtend;
          }
          else{
            //console.log("SRA Immidiate");
            aluOUT = registerFile[instr_rs1] >> signExtend;
          }
          break;
        case FUNCT3_SLTI: // OR
            aluOUT = registerFile[instr_rs1]<signExtend;
          break;
        case FUNCT3_SLTUI: // AND
            aluOUT = (registerFile[instr_rs1]>>>0)<(signExtend>>>0);
          break;
        default:
            //console.log("ICOMP Default");
          break;
        }
        WriteRegister(instr_rd,aluOUT);
    // registerFile[instr_rd]=aluOUT;
    //console.log("Wrote Immidiate :",registerFile[instr_rd]," on ",instr_rd);
    //console.log("sign extend: ",signExtend, "ALUOUT: ",aluOUT);
    break;
		case I_LOAD_FORMAT: 
      //console.log("Load from Immidiate");
      var mem_select=func3;
      aluOUT = registerFile[instr_rs1] + signExtend;
      
      var byte_index = getBits(aluOUT,1,0);
      var word_index = aluOUT;
      var loadedWord=ReadMemory(word_index,true);
      var byte_sel =  (byte_index==0)?getBits(loadedWord,7,0):
                      (byte_index==1)?getBits(loadedWord,15,8):
                      (byte_index==2)?getBits(loadedWord,23,16):
                      (byte_index==3)?getBits(loadedWord,31,24):0;
      var half_sel = (byte_index==0)?getBits(loadedWord,15,0):getBits(loadedWord,31,16);
      var tempOut;
      switch(mem_select){
        case FUNCT3_LB:
          tempOut = (byte_sel<<24)>>24;
          break;
        case FUNCT3_LH:
          tempOut = (half_sel<<16)>>16;
          break;
        case FUNCT3_LBU:
          tempOut = byte_sel;
          break;
        case FUNCT3_LHU:
          tempOut = half_sel;
          break;
        default:
          tempOut = loadedWord;
          break;
      }
      WriteRegister(instr_rd,tempOut);
    // registerFile[instr_rd]=tempOut;
    //console.log("Wrote Load :",registerFile[instr_rd].toString(16)," decimal: ",registerFile[instr_rd]," on ",instr_rd);
		break;
		case I_JALR_FORMAT:
      //console.log("I_JALR_FORMAT");
      WriteRegister(instr_rd,PC);
      // registerFile[instr_rd] = PC;
      PC =  registerFile[instr_rs1];

		break;
		case S_FORMAT: 
      //console.log("Store Data");
      var mem_select=func3;
      address = signExtend + registerFile[instr_rs1];
      var write_data = registerFile[instr_rs2];
      var offset = getBits(address,1,0);
      var byte_select_vector;
      var dataOut;
      switch(mem_select){
        case FUNCT3_SB:
          byte_select_vector = 1<<offset;
            switch(offset){
              case 0:
                //console.log("Normal is: ",write_data.toString(16));
                //console.log("Shifted is: ",(write_data).toString(16));
                dataOut = write_data;
              break;
              case 1:
                dataOut = write_data<<8;
                //console.log("Normal is: ",write_data.toString(16));
                //console.log("Shifted is: ",(write_data<<8).toString(16));
              break;
              case 2:
                //console.log("Normal is: ",write_data.toString(16));
                //console.log("Shifted is: ",(write_data<<16).toString(16));
                dataOut = write_data<<16;
              break;
              case 3:
                //console.log("Normal is: ",write_data.toString(16));
                //console.log("Shifted is: ",(write_data<<24).toString(16));
                dataOut = write_data<<24;
              break;
              default:
                dataOut = write_data;
              break;
            }
          break;
        case FUNCT3_SH:
          if(offset==0){
            byte_select_vector= 0b0011;
          }
          else{
            byte_select_vector= 0b1100;
          }
          //console.log("----byte_select_vector: ",byte_select_vector.toString(2));
          switch(offset){
            case(0):
              dataOut = write_data;
            break;
            case(2):
              dataOut = write_data<<16;
            break;
            default:
              dataOut = write_data;
            break;
          }
          break;
          default:
            byte_select_vector = 0b1111;
            dataOut = write_data;
            break;
          }
          console.log("TEST");
          console.log("Writing to address: ",address);
      if(address>=1024&&address<1024+64){
        console.log("Writing to screen character: ",write_data.toString(16));
        console.log("Writing to screen address: ",address);
        WriteToScreen(address,write_data);
      }
      else{
        WriteMemory(address,dataOut,byte_select_vector);
      }
		break;
		case B_FORMAT: 
      //console.log("Branch");
      if(func3==FUNCT3_BEQ){
        if(registerFile[instr_rs1]==registerFile[instr_rs2]){
          PC+=signExtend-4;
        }
      }
      else if(func3==FUNCT3_BNE){
        if(registerFile[instr_rs1]!=registerFile[instr_rs2]){
          PC+=signExtend-4;
        }
      }
      else if(func3==FUNCT3_BLT){
        if(registerFile[instr_rs1]<registerFile[instr_rs2]){
          PC+=signExtend-4;
        }
      }
      else if(func3==FUNCT3_BGE){
        if(registerFile[instr_rs1]>=registerFile[instr_rs2]){
          PC+=signExtend-4;
        }
      }
      else if(func3==FUNCT3_BLTU){
        if(registerFile[instr_rs1]>>>0<registerFile[instr_rs2]>>>0){
          PC+=signExtend-4;
        }
      }
      else if(func3==FUNCT3_BGEU){
        if(registerFile[instr_rs1]>>>0>=registerFile[instr_rs2]>>>0){
          PC+=signExtend-4;
        }
      }
		break;
		case J_FORMAT:
      WriteRegister(instr_rd,PC);
      // console.log("Jumping and linking: ",PC," to ",signExtend," saving to:",instr_rd);
      PC+=signExtend-4;

		break;
		case U_FORMAT_LUI:
            //console.log("Load from Immidiate");
            var mem_select=func3;
            aluOUT = registerFile[instr_rs1] + signExtend;
            
            var byte_index = getBits(aluOUT,1,0);
            var word_index = aluOUT;
            var loadedWord=ReadMemory(word_index,false);
            var byte_sel =  (byte_index==0)?getBits(loadedWord,7,0):
                            (byte_index==1)?getBits(loadedWord,15,8):
                            (byte_index==2)?getBits(loadedWord,23,16):
                            (byte_index==3)?getBits(loadedWord,31,24):0;
            var half_sel = (byte_index==0)?getBits(loadedWord,15,0):getBits(loadedWord,31,16);
            var tempOut;
            switch(mem_select){
              case FUNCT3_LB:
                tempOut = (byte_sel<<24)>>24;
                break;
              case FUNCT3_LH:
                tempOut = (half_sel<<16)>>16;
                break;
              case FUNCT3_LBU:
                tempOut = byte_sel;
                break;
              case FUNCT3_LHU:
                tempOut = half_sel;
                break;
              default:
                tempOut = loadedWord;
                break;
            }
            WriteRegister(instr_rd,tempOut);
      //console.log("U_FORMAT_LUI");
		break;
		case U_FORMAT_AUIPC:
      WriteRegister(instr_rd,PC+(signExtend<<12));
      //console.log("U_FORMAT_AUIPC");
		break;
		default:
      console.log("Default");
		break;
    }
    updateRegisterTable();
    //console.log(registerFile);
}


function WriteToScreen(address,data){
  charMemory[getBits(address,6,0)]=getBits(data,6,0);
  renderFrame();
}
function showInstruction(prev,cur,next){
  // console.log("prev: ",prev,"cur: ",cur,"next: ",next);
  if(prev!=null){
    document.getElementById("prevInstr").innerText=decodeInstruction(prev);
  }
  else{
    document.getElementById("prevInstr").innerText="N/A";
  }
  if(cur!=null){
    document.getElementById("curInstr").innerText=decodeInstruction(cur);
  }
  else{

    document.getElementById("curInstr").innerText="N/A";
  }
  if(next!=null){
    document.getElementById("nextInstr").innerText=decodeInstruction(next);
  }
  else{
    document.getElementById("nextInstr").innerText="N/A";

  }
}

function signExtend(value, fromBits) {
  var signBit = 1 << (fromBits - 1);  // Position of the sign bit
  return (value & (signBit - 1)) - (value & signBit);  // Sign extend the value
}
function signExtendImmediate(instr,opcode){

  var imm_i = signExtend(getBits(instr, 24, 13), 13); // 13 bits for I-type
  imm_i = (imm_i << 20) >> 20; // Extend to 32 bits

  var imm_s = signExtend((getBits(instr, 24, 18) << 5) | getBits(instr, 4, 0), 13);
  imm_s = (imm_s << 20) >> 20; // Extend to 32 bits

  var tempB=(getBits(instr,4,1)<<1|getBits(instr,23,18)<<5|getBits(instr,0,0)<<11|getBits(instr,24,24)<<12);
  var imm_b = signExtend(tempB,13);
  imm_b = (imm_b << 19) >> 19; // Extend to 32 bits

  var imm_u = (getBits(instr, 24, 5) << 12); // U-type doesn't need sign extension
  var tempJ= (getBits(instr,17,14)<<1|getBits(instr,23,18)<<5|getBits(instr,13,13)<<11|getBits(instr,12,5)<<12|getBits(instr,24,24)<<20);
  //console.log("tempJ: ",tempJ);
  var imm_j = signExtend(
      tempJ>>>0,
      21
  );
  imm_j = imm_j << 11 >> 11; // Extend to 32 bits

  var out;
  switch(opcode){
    case I_COMP_FORMAT:	
      out = imm_i;
      break;
    case I_LOAD_FORMAT:	
      out = imm_i;
      break;
    case I_JALR_FORMAT:	
      out = imm_i;
      break;
    case S_FORMAT:		
      out = imm_s;
      break;
    case B_FORMAT:		
      out = imm_b;
      break;
    case J_FORMAT:		
      out = imm_j;
      break;
    case U_FORMAT_AUIPC, U_FORMAT_LUI:	
      out = imm_u;
      break;
    default:		
      out = 6969;
      break;
  }
  return out;
}
function WriteRegister(addr,data){
  if(addr!=0){
    registerFile[addr]=data;
  }
}
function ReadMemory(address,signed){
  
  var tempData = dataMemory[address>>>2];
  if(!signed)
    tempData = tempData>>>0;

  return tempData;

}
function WriteMemory(address,data,byte_select_vector){


  //console.log("byte_select_vector: ",byte_select_vector.toString(2));
  //console.log("Writing data: ",data.toString(16)," on ",address);
  tempData=dataMemory[address>>>2];
  //console.log("tempData: ",tempData.toString(16));
  if(getBits(byte_select_vector,3,3)==1){
    //console.log("writting bit 3");
    //console.log("tempData: ",((tempData&0x00FFFFFF)>>>0).toString(16));
    //console.log("data: ",((data&0xFF000000)>>>0).toString(16));
    tempData = (((tempData&0x00FFFFFF)>>>0)|(data&0xFF000000)>>>0)>>>0;
  }
  if(getBits(byte_select_vector,2,2)){
    //console.log("writting bit 2");
    //console.log("tempData: ",((tempData&0xFF00FFFF)>>>0).toString(16));
    //console.log("data: ",((data&0x00FF0000)>>>0).toString(16));
    tempData = (((tempData&0xFF00FFFF))>>>0|(data&0x00FF0000)>>>0)>>>0;
  }
  if(getBits(byte_select_vector,1,1)){
    //console.log("writting bit 1");
    //console.log("tempData: ",((tempData&0x0FFFF00FF)>>>0).toString(16));
    //console.log("data: ",((data&0x0000FF00)>>>0).toString(16));
    tempData = (((tempData&0x0FFFF00FF))>>>0|(data&0x0000FF00)>>>0)>>>0;
  }
  if(getBits(byte_select_vector,0,0)){
    //console.log("writting bit 0");
    //console.log("tempData: ",((tempData&0xFFFFFF00)>>>0).toString(16));
    //console.log("data: ",((data&0x000000FF)>>>0).toString(16));
    tempData = (((tempData&0xFFFFFF00))>>>0|(data&0x000000FF)>>>0)>>>0;
  }
  dataMemory[address>>>2]=tempData;
  for(let i=0;i<4&&i<dataMemory.length;i++){
    //console.log("Data memory[",i,"]= ",dataMemory[i].toString(16));
  }
}

function addRegisterRow(register1, value1,register2,value2) {
  const table = document.getElementById('registerTable').getElementsByTagName('tbody')[0];
  const newRow = table.insertRow();

  const cell1 = newRow.insertCell(0);
  const cell2 = newRow.insertCell(1);
  const cell3 = newRow.insertCell(2);
  const cell4 = newRow.insertCell(3);
  cell1.innerText = register1;
  cell2.innerText = value1;
  cell3.innerText = register2;
  cell4.innerText = value2;
}
function updateRegisterTableRow(rowIndex, value) {
  const table = document.getElementById('registerTable');
  const row = table.rows[(Math.floor(rowIndex / 2))+1];
  if (row) {
    if (rowIndex % 2 === 0) {
      row.cells[1].innerText = value;
    } else {
      row.cells[3].innerText = value;
    }
  }
  var currentInstr = instructionsHex[(PC+4)>>2];
  var nextInstr    = instructionsHex[(PC+8)>>2];
  showInstruction(prevInstr,currentInstr,nextInstr);
}
function updateRegisterTable(){
  for(i=0;i<32;i++){
    updateRegisterTableRow(i,registerFile[i].toString(16)+" d: "+registerFile[i]);
  }
  updateRegisterTableRow(32,PC>>2);
}
function initRegisterTable(){
  addRegisterRow("x0",0,"ra",0);
  addRegisterRow("sp",0,"gp",0);
  addRegisterRow("tp",0,"t0",0);
  addRegisterRow("t1",0,"t2",0);
  addRegisterRow("s0",0,"s1",0);
  addRegisterRow("a0",0,"a1",0);
  addRegisterRow("a2",0,"a3",0);
  addRegisterRow("a4",0,"a5",0);
  addRegisterRow("a6",0,"a7",0);
  addRegisterRow("s2",0,"s3",0);
  addRegisterRow("s4",0,"s5",0);
  addRegisterRow("s6",0,"s7",0);
  addRegisterRow("s8",0,"s9",0);
  addRegisterRow("s10",0,"s11",0);
  addRegisterRow("t3",0,"t4",0);
  addRegisterRow("t5",0,"t6",0);
  addRegisterRow("PC",0,"","");
}
function removeLineNumbers(text) {
  const lines = text.split('\n');
  const originalLines = lines.map((line) => line.replace(/^\d+:\s*/, ''));
  return originalLines.join('\n');
}

function BuildAssembly(){
  errors.length=0;

  const assemblyTextarea = document.getElementById('instructionsAssembly');
  const assemblyInputWithNumbers = assemblyTextarea.value;
  const assemblyInput = removeLineNumbers(assemblyInputWithNumbers);
  var build = assembleCode(assemblyInput).join('\n');
  var instructionsInput = document.getElementById('instructionsInput');
  instructionsInput.value = build;
  const errorsTableBody = document.querySelector('#errorsTable tbody');
    errorsTableBody.innerHTML = ''; // Clear existing errors

    if (errors.length > 0) {
        errors.forEach((error) => {
            const row = document.createElement('tr');
            const [lineNumber, errorMessage] = error.split(' -> ');

            const lineNumberCell = document.createElement('td');
            lineNumberCell.textContent = lineNumber;

            const errorMessageCell = document.createElement('td');
            errorMessageCell.textContent = errorMessage;

            row.appendChild(lineNumberCell);
            row.appendChild(errorMessageCell);

            errorsTableBody.appendChild(row);
        });
    } else {
        // Optionally, you can show a message when there are no errors
        const row = document.createElement('tr');
        const cell = document.createElement('td');
        cell.setAttribute('colspan', '2');
        cell.textContent = 'No errors.';
        row.appendChild(cell);
        errorsTableBody.appendChild(row);
    }
  ResetCPU();
}



document.addEventListener('DOMContentLoaded', () => {
  const assemblyTextarea = document.getElementById('instructionsAssembly');

  assemblyTextarea.addEventListener('keydown', function(e) {
      if (e.key === 'Tab') {
          e.preventDefault();

          const start = this.selectionStart;
          const end = this.selectionEnd;

          // Set textarea value to: text before caret + tab + text after caret
          this.value = this.value.substring(0, start) + '\t' + this.value.substring(end);

          // Put caret at right position again
          this.selectionStart = this.selectionEnd = start + 1;
      }
  });
});

document.addEventListener('DOMContentLoaded', () => {
  const assemblyTextarea = document.getElementById('instructionsAssembly');

  function addLineNumbers(text) {
      const lines = text.split('\n');
      const numberedLines = lines.map((line, index) => `${index}: ${line}`);
      return numberedLines.join('\n');
  }

  function removeLineNumbers(text) {
      const lines = text.split('\n');
      const originalLines = lines.map((line) => line.replace(/^\d+:\s*/, ''));
      return originalLines.join('\n');
  }

  let isUpdating = false;

  assemblyTextarea.addEventListener('input', function() {
      if (isUpdating) return;
      isUpdating = true;

      // Save cursor position
      const cursorPosition = this.selectionStart;
      const textBeforeCursor = this.value.substring(0, cursorPosition);
      const lineNumberBeforeCursor = (textBeforeCursor.match(/\n/g) || []).length;

      // Remove existing line numbers
      const textWithoutNumbers = removeLineNumbers(this.value);

      // Add line numbers
      const textWithNumbers = addLineNumbers(textWithoutNumbers);

      // Update the textarea content
      this.value = textWithNumbers;

      // Restore cursor position
      const linesUpToCursor = textWithNumbers.split('\n').slice(0, lineNumberBeforeCursor + 1);
      const newCursorPosition = linesUpToCursor.join('\n').length;

      this.selectionStart = this.selectionEnd = newCursorPosition;

      isUpdating = false;
  });

  // Initialize content with line numbers
  const initialText = assemblyTextarea.value;
  assemblyTextarea.value = addLineNumbers(initialText);
});
