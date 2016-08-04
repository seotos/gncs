PShape korea;
PShape[] loc=new PShape[50];
String[] name={"서울특별시","대전광역시","인천광역시","경기도","강원도","충청북도",
"충청남도","제주특별자치도","경상북도","대구광역시","울산광역시","경상남도",
"부산광역시","전라북도","광주광역시","전라남도","세종특별자치시"};

void setup() {
  size(509, 717);  
  korea = loadShape("South_Korea.svg");
  for(int i=0;i<name.length;i++)
  loc[i] = korea.getChild(name[i]);
}
void draw() {
  background(255);
  shape(korea, 0, 0);
  for(int i=0;i<name.length;i++){
    loc[i].disableStyle();
    fill(random(255), random(255), random(255));
    noStroke();
    shape(loc[i], 0, 0); // Wolverines!
  }
  
}
