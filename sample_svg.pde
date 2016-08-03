// 프 로 세 싱 을 이 용 한 svg 시 각 화

PShape usa;
PShape michigan;
PShape ohio;

void setup() {
  size(959, 593);  
  usa = loadShape("Blank US states map.svg");
  michigan = usa.getChild("MI");
  ohio = usa.getChild("OH");
}

void draw() {
  background(255);
  
  // Draw the full map
  shape(usa, 0, 0);
  
  // Disable the colors found in the SVG file
  michigan.disableStyle();
  // Set our own coloring
  fill(0, 51, 102);
  noStroke();
  // Draw a single state
  shape(michigan, 0, 0); // Wolverines!
  
  // Disable the colors found in the SVG file
  ohio.disableStyle();
  // Set our own coloring
  fill(153, 0, 0);
  noStroke();
  // Draw a single state
  shape(ohio, 0, 0);  // Buckeyes!
}
