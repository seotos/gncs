// csv file (NO header)

int[] homeRuns;         // 어느 함수에도 소속되지 않은 전역변수를 만든다.
void setup() {
  size(480, 120);
  Table stats = loadTable("ortiz.csv");  // csv파일 열어 파일의 정보를 가져온다.
  int rowCount = stats.getRowCount(); // 행의 개수를 구한다.
  homeRuns = new int[rowCount];        // 행의 개수 만큼 홈런 정보를 저장하기 위한 배열을 만든다.
  for (int i = 0; i < homeRuns.length; i++) {
    homeRuns[i] = stats.getInt(i, 1);     // 홈런정보를 저장하는 변수에 csv의 각 행의 1번째 값을 가져온다.(0번 부터 시작)
  }
}
void draw() {
  background(204);
  // Draw background grid for data
  stroke(255);
  //그래프의 x와 y 좌표를 표시한다.
  line(20, 100, 20, 20);
  line(20, 100, 460, 100);
  // 그래프의 세로 선을 만든다.
  for (int i = 0; i < homeRuns.length; i++) {
    float x = map(i, 0, homeRuns.length-1, 20, 460);
    line(x, 20, x, 100);
  }
  // Draw lines based on home run data
  noFill();
  stroke(204, 51, 0);
  // 만들어진 세로 선 위에 구한 값을 점을 찍어 연결한다.
  beginShape();
  for (int i = 0; i < homeRuns.length; i++) {
    float x = map(i, 0, homeRuns.length-1, 20, 460);
    float y = map(homeRuns[i], 0, 60, 100, 20);
    vertex(x, y);
  }
  endShape();
}

