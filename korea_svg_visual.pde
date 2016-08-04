PShape korea;
PShape loc;


void setup() {
  size(509, 717);  
  korea = loadShape("South_Korea.svg");
  loc = korea.getChild("경상남도");
}

void draw() {
  background(255);
  
  // Draw the full map
  shape(korea, 0, 0);
  
  // Disable the colors found in the SVG file
  loc.disableStyle();
  // Set our own coloring
  fill(0, 51, 102);
  noStroke();
  // Draw a single state
  shape(loc, 0, 0); // Wolverines!
  
}
