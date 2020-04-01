Grid grid;
int rows = 4;
int cols = 6;

void setup() {
  size(800, 800);
  pixelDensity(displayDensity());
  background(255);
  
  // Sets up a new grid
  // x, y, width, height, columnCount, rowCount, gutter
  grid = new Grid(20, 20, width-40, height-60, cols, rows, 10);
}

void draw() {
  // Get coordinates to span some modules from the grid
  // startCol, startRow, endCol, endRow
  Module myRect = grid.span(1, 2, 4, 3);
  
  // Get the top right corner of the spanned modules
  PVector corner = myRect.corner(Module.TOP_RIGHT);
  
  fill(235);
  noStroke();
  rect(myRect.x, myRect.y, myRect.w, myRect.h);
  fill(0);
  ellipse(corner.x, corner.y, 10, 10);
  
  // Helper Method to visualize the grid
  grid.display();
}
