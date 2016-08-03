import processing.svg.*;
PGraphics pgDrawing;
PShape bg;
 
void setup() {
  size(400, 400);
  background(255);
 
  pgDrawing = createGraphics(400, 400, SVG, "test.svg");
  pgDrawing.beginDraw();
  pgDrawing.background(255);
  pgDrawing.stroke(0);
  pgDrawing.strokeWeight(4);
  drawEllipses();
  pgDrawing.dispose();
  pgDrawing.endDraw();
  bg = loadShape("test.svg");
}
 
void draw() {
  shape(bg, 0, 0);
  noLoop();
}
 
void drawEllipses() {
  for (int i=0; i<10; i++) {
    pgDrawing.ellipse(random(0, width), random(0, height), 10, 10);
  }
}
