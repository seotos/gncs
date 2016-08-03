PFont font;
void setup() {
  size(480, 120);
  font = createFont("SourceCodePro-Regular.ttf", 32);
  textFont(font);
}
void draw() {
  background(102);
  textSize(32);
  text("It is a good day", 25, 60);
  textSize(16);
  text("to study!! GSHS", 27, 90);
}
