float angle = 0.0;
float offset = 60;
float scalar = 40;
float speed = 0.05;
void setup() {
  size(240, 120);
}
void draw() {
  background(255);
  fill(0);
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
  ellipse( 80, y1, 40, 40);
  ellipse(120, y2, 40, 40);
  ellipse(160, y3, 40, 40);
  angle += speed;
}
