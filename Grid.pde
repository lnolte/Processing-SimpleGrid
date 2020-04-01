class Grid {
  int x, y, w, h, cols, rows, gutter;
  float colWidth, rowHeight;
  GridModule modules[];

  Grid(int xPos, int yPos, int w, int h, int cols, int rows, int gutter) {
    this.x = xPos;
    this.y = yPos;
    this.w = w;
    this.h = h;
    this.cols = cols;
    this.rows = rows;
    this.gutter = gutter;
    this.modules = new GridModule[this.cols * this.rows];

    this.colWidth = (this.w - (this.cols - 1)*this.gutter) / this.cols;
    this.rowHeight = (this.h - (this.rows - 1)*this.gutter) / this.rows;
    int i = 0;

    for (int y = 0; y < this.rows; y++) {
      for (int x = 0; x < this.cols; x++) {
        float modX = this.x + (x * this.colWidth) + (x * this.gutter);
        float modY = this.y + (y * this.rowHeight) + (y * this.gutter);
        this.modules[i] = new GridModule(modX, modY, this.colWidth, this.rowHeight);

        i++;
      }
    }
  }

  GridModule getModule(int col, int row) {
    int index = (col - 1) + ((row - 1) * this.cols);
    return this.modules[index];
  }

  GridModule span(int sCol, int sRow, int eCol, int eRow) {
    GridModule start = this.getModule(sCol, sRow);
    float x = start.x;
    float y = start.y;
    float yGap = eRow - sRow;
    float xGap = eCol - sCol;
    float w = (xGap * this.gutter) + ((xGap + 1) * this.colWidth);
    float h = (yGap * this.gutter) + ((yGap + 1) * this.rowHeight);

    return new GridModule(x, y, w, h);
  }


  void display() {
    push();
    rectMode(CORNER);
    noFill();
    stroke(111, 66, 193);
    for (int y = 1; y <=rows; y++) {
      for (int x = 1; x <=cols; x++) {
        GridModule mod = grid.getModule(x, y);
        rect(mod.x, mod.y, mod.w, mod.h);
      }
    }
    pop();
  }
}
