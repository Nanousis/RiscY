// -----------------------------------------------------------------------------
// Configuration
// -----------------------------------------------------------------------------

// The size of each tile in the sprite sheet:
const TILE_WIDTH  = 8;
const TILE_HEIGHT = 16;

// Map dimensions in tiles:
const MAP_COLS    = 50;
const MAP_ROWS    = 15;

// Scale factor for displaying the map bigger (optional)
const SCALE_FACTOR = 4;

// The displayed tile size on the canvas:
const DISPLAY_TILE_WIDTH  = TILE_WIDTH  * SCALE_FACTOR;
const DISPLAY_TILE_HEIGHT = TILE_HEIGHT * SCALE_FACTOR;

// The canvas size based on the map dimensions and scale:
const CANVAS_WIDTH  = MAP_COLS * DISPLAY_TILE_WIDTH;
const CANVAS_HEIGHT = MAP_ROWS * DISPLAY_TILE_HEIGHT;

// -----------------------------------------------------------------------------
// Internal data structures
// -----------------------------------------------------------------------------

// Array of tile images (each an <img> of size 8×16). Index in this array is tile ID.
let tileImages = [];

// The map data, 2D array of size [MAP_ROWS][MAP_COLS], holding tile IDs (0-based).
let mapData = [];
for (let row = 0; row < MAP_ROWS; row++) {
  mapData[row] = [];
  for (let col = 0; col < MAP_COLS; col++) {
    mapData[row][col] = 0; // default tile is 0
  }
}

// Which tile is currently selected from the palette:
let selectedTileIndex = 0;

// Whether the mouse is currently pressed (for continuous painting).
let isMouseDown = false;

// -----------------------------------------------------------------------------
// DOM references
// -----------------------------------------------------------------------------
const canvas                = document.getElementById('canvas');
const ctx                   = canvas.getContext('2d');
const tilePaletteDiv        = document.getElementById('tilePalette');
const tilesetInput          = document.getElementById('tilesetInput');
const exportButton          = document.getElementById('exportButton');
const export2BitButton      = document.getElementById('export2BitButton');
const exportAllBinaryButton = document.getElementById('exportAllBinaryButton');
const exportOutput          = document.getElementById('exportOutput');

// Set the actual size of the canvas for display
canvas.width  = CANVAS_WIDTH;
canvas.height = CANVAS_HEIGHT;

// -----------------------------------------------------------------------------
// Functions
// -----------------------------------------------------------------------------

/**
 * Redraws the entire map on the canvas (scaled).
 */
function drawMap() {
  ctx.clearRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
  for (let row = 0; row < MAP_ROWS; row++) {
    for (let col = 0; col < MAP_COLS; col++) {
      const tileID = mapData[row][col];
      const tileImg = tileImages[tileID];
      if (tileImg) {
        ctx.drawImage(
          tileImg,
          col * DISPLAY_TILE_WIDTH,
          row * DISPLAY_TILE_HEIGHT,
          DISPLAY_TILE_WIDTH,
          DISPLAY_TILE_HEIGHT
        );
      }
    }
  }
}

/**
 * Splits a sprite sheet image into 8×16 sub-images and adds them to the tile set.
 */
function splitSpriteSheet(img) {
  const tilesAcross = Math.floor(img.width  / TILE_WIDTH);
  const tilesDown   = Math.floor(img.height / TILE_HEIGHT);

  for (let ty = 0; ty < tilesDown; ty++) {
    for (let tx = 0; tx < tilesAcross; tx++) {
      // Offscreen canvas for a single 8×16 tile
      const offCanvas = document.createElement('canvas');
      offCanvas.width  = TILE_WIDTH;
      offCanvas.height = TILE_HEIGHT;

      const offCtx = offCanvas.getContext('2d');
      offCtx.drawImage(
        img,
        tx * TILE_WIDTH,   // source x
        ty * TILE_HEIGHT,  // source y
        TILE_WIDTH,
        TILE_HEIGHT,
        0,
        0,
        TILE_WIDTH,
        TILE_HEIGHT
      );

      const subImg = new Image();
      subImg.src = offCanvas.toDataURL();

      subImg.onload = () => {
        tileImages.push(subImg);
        // Add a palette thumbnail
        addTileToPalette(subImg, tileImages.length - 1);
      };
    }
  }
}

/**
 * Creates a thumbnail in the tile palette for the given tile image.
 * @param {HTMLImageElement} img
 * @param {number} index tile ID
 */
function addTileToPalette(img, index) {
  const thumb = document.createElement('img');
  thumb.src = img.src;

  // If you want to resize the thumbnail, do so via CSS or set thumb.width/height

  thumb.addEventListener('click', () => {
    // Remove "selected" from all existing thumbnails
    const allThumbs = tilePaletteDiv.querySelectorAll('img');
    allThumbs.forEach(t => t.classList.remove('selected'));

    // Highlight the current one
    thumb.classList.add('selected');
    selectedTileIndex = index;
  });

  // If this is the very first tile overall, select it by default
  if (index === 0 && tileImages.length === 1) {
    thumb.classList.add('selected');
    selectedTileIndex = 0;
  }

  tilePaletteDiv.appendChild(thumb);
}

/**
 * Place the currently selected tile at the mouse's position (in tile coords).
 */
function placeTileAtMouse(event) {
  const rect = canvas.getBoundingClientRect();
  const mouseX = event.clientX - rect.left;
  const mouseY = event.clientY - rect.top;

  const col = Math.floor(mouseX / DISPLAY_TILE_WIDTH);
  const row = Math.floor(mouseY / DISPLAY_TILE_HEIGHT);

  if (col >= 0 && col < MAP_COLS && row >= 0 && row < MAP_ROWS) {
    mapData[row][col] = selectedTileIndex;
    drawMap();
  }
}

/**
 * Generates a hex dump string of the mapData (each tile ID as 2-digit hex).
 */
function generateHexDump() {
  let hexDump = '';
  for (let row = 0; row < MAP_ROWS; row++) {
    for (let col = 0; col < MAP_COLS; col++) {
      const tileID = mapData[row][col];
      const hexByte = tileID.toString(16).padStart(2, '0');
      hexDump += hexByte + ' ';
    }
    hexDump += '\n';
  }
  return hexDump;
}

/**
 * Convert a single tile (<img> 8×16) to a 32-byte array of 2-bit grayscale data.
 * Each row (8 pixels) becomes 2 bytes => 16 rows => 32 bytes total.
 */
function get2BitSpriteData(tileImg) {
  // 1) Draw the tile to an offscreen 8×16 canvas
  const offCanvas = document.createElement('canvas');
  offCanvas.width  = TILE_WIDTH;   // 8
  offCanvas.height = TILE_HEIGHT;  // 16
  const offCtx = offCanvas.getContext('2d');
  offCtx.drawImage(tileImg, 0, 0);

  // 2) Extract RGBA data
  const imageData = offCtx.getImageData(0, 0, TILE_WIDTH, TILE_HEIGHT);
  const data = imageData.data; // [R, G, B, A, R, G, B, A, ...]

  // 3) We'll accumulate 32 bytes: each row is 2 bytes, 16 rows total
  const bytes = [];

  // 4) For each row (y = 0..15):
  for (let row = 0; row < TILE_HEIGHT; row++) {
    // We process 8 pixels in *two chunks* of 4 each
    // So each row yields 2 bytes
    // chunkStart = 0 => first 4 pixels; chunkStart = 4 => next 4 pixels
    for (let chunkStart = 0; chunkStart < TILE_WIDTH; chunkStart += 4) {
      let byteVal = 0;

      // For the 4 pixels in this chunk
      for (let x = chunkStart; x < chunkStart + 4; x++) {
        // Convert from RGBA -> single grayscale
        const idx = (row * TILE_WIDTH + x) * 4;
        const r = data[idx + 0];
        const g = data[idx + 1];
        const b = data[idx + 2];

        // 5) We compare the grayscale intensity vs. 4 ranges
        //    (If you want a more accurate luminance, you can average or do 0.299r+0.587g+0.114b)
        const pixel = Math.round((r + g + b) / 3);
        let bitValue;
        if      (pixel <  64) bitValue = 0; 
        else if (pixel < 128) bitValue = 1;
        else if (pixel < 192) bitValue = 2;
        else                  bitValue = 3;

        // 6) LSB-first packing: shift by (2*(x-chunkStart))
        // x-chunkStart => 0..3
        // So leftmost pixel in this 4-pixel chunk goes in the *lowest* bits
        byteVal |= (bitValue << (2 * (x - chunkStart)));
      }

      bytes.push(byteVal); 
      // => after first chunk, row has 1 byte, after second chunk, row has 2 bytes
    }
  }

  return bytes; // 32 bytes total (2 per row × 16 rows)
}

/**
 * Generates a 2-bit hex dump for all tiles (in text form).
 * This was from our earlier example if you still want text output.
 */
function generate2BitHexForAllTiles() {
  let output = '';
  tileImages.forEach((tile, i) => {
    output += `Tile ${i} (32 bytes):\n`;
    const spriteBytes = get2BitSpriteData(tile);

    // Convert each byte to hex
    let line = spriteBytes.map(b => b.toString(16).padStart(2, '0')).join(' ');
    output += line + '\n\n';
  });
  return output;
}

/**
 * Creates a single binary file with this format:
 *  [1 byte]        Number_of_sprites (N)
 *  [32*N bytes]    2-bit sprite data for each tile
 *  [MAP_COLS*MAP_ROWS bytes]  The map data (tile IDs)
 */
function exportAllAsBinary() {
  const numberOfSprites = tileImages.length;
  // Each sprite is 32 bytes in 2-bit form
  const spriteBytesTotal = numberOfSprites * 32;

  // The map is MAP_COLS*MAP_ROWS = 50*14=700 bytes, each tile ID is 1 byte
  const mapBytesTotal = MAP_COLS * MAP_ROWS;

  // We'll create a buffer big enough for everything
  const totalSize = 1 + spriteBytesTotal + mapBytesTotal; // first byte is # of sprites
  const buffer = new ArrayBuffer(totalSize);
  const view = new Uint8Array(buffer);

  let offset = 0;

  // 1) Number of sprites
  view[offset] = numberOfSprites;
  offset++;

  // 2) 2-bit data for each sprite
  for (let i = 0; i < numberOfSprites; i++) {
    const spriteData = get2BitSpriteData(tileImages[i]); // 32 bytes
    for (let j = 0; j < 32; j++) {
      view[offset] = spriteData[j];
      offset++;
    }
  }

  // 3) The map data (tile IDs) in row-major order
  for (let row = 0; row < MAP_ROWS; row++) {
    for (let col = 0; col < MAP_COLS; col++) {
      view[offset] = mapData[row][col];
      offset++;
    }
  }

  // Now we have our complete binary data in "buffer".
  // Create a Blob and trigger a download.
  const blob = new Blob([buffer], { type: 'application/octet-stream' });
  const url = URL.createObjectURL(blob);

  const a = document.createElement('a');
  a.href = url;
  a.download = 'export.bin'; // The filename for the download
  document.body.appendChild(a);
  a.click();

  // Clean up
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}

// -----------------------------------------------------------------------------
// Event Handlers
// -----------------------------------------------------------------------------

// Handle file input: user can select one or more images (potentially large sprite sheets).
tilesetInput.addEventListener('change', (event) => {
  const files = event.target.files;
  if (!files) return;

  for (let i = 0; i < files.length; i++) {
    const file = files[i];
    const reader = new FileReader();
    reader.onload = (e) => {
      const img = new Image();
      img.onload = () => {
        splitSpriteSheet(img);
      };
      img.src = e.target.result;
    };
    reader.readAsDataURL(file);
  }
});

// Continuous drawing events on the canvas
canvas.addEventListener('mousedown', (e) => {
  isMouseDown = true;
  placeTileAtMouse(e); 
});
canvas.addEventListener('mousemove', (e) => {
  if (isMouseDown) {
    placeTileAtMouse(e);
  }
});
canvas.addEventListener('mouseup', () => {
  isMouseDown = false;
});
canvas.addEventListener('mouseleave', () => {
  isMouseDown = false;
});

// Export the map as hex text
exportButton.addEventListener('click', () => {
  exportOutput.value = generateHexDump();
});

// Export each sprite in 2-bit hex text
export2BitButton.addEventListener('click', () => {
  exportOutput.value = generate2BitHexForAllTiles();
});

// Export everything in one binary file
exportAllBinaryButton.addEventListener('click', () => {
  exportAllAsBinary();
});

// -----------------------------------------------------------------------------
// Initial draw of empty map
// -----------------------------------------------------------------------------
drawMap();
