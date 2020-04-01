# SimpleGrid for Processing 📐

SimpleGrid is a simple set of calculations for creating in-memory modular grids
for your processing sketches.


## How to use

```java
// x, y, w, h, cols, rows, gutter
grid = new Grid(20, 20, width-40, height-60, 5, 5, 10);

// get a module from the grid
// col, row
GridModule myModule = grid.getModule(2, 2);

rect(myModule.x, myModule.y, myModule.w, myModule.h);

// Get a module span from the grid
// startCol, startRow, endCol, endRow
GridModule mySpan = grid.span(1, 1, 4, 4);
rect(span.x, span.y, span.w, span.h);

// Display the grid in the sketch for debugging purposes
grid.display();
```
