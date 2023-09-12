void setup() {
  size(500, 500);
  noLoop();
}

void draw() {  
  // r = row
  // c = column
  for(int c = 25; c >= -2; c--) {
    for (int r = 25  ; r >= -2; r--) {
      scale(25 * r, 25 * c);
    }
  }
}

void scale(int x, int y) {
  color fillColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  
  fill(fillColor);
  strokeWeight(0);
  
  bezier(x, y,  x + 50, y + 25, x + 50, y + 50,  x, y + 75);
}
