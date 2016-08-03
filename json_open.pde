

/*
json파일은 저장데이터로 많이 사용하는 규격이다. 각각의 파일의 정보들이 이름표가 붙여져 있다. 
"title": "Alphaville"
"director": "Jean-Luc Godard"
"year": 1964
"rating": 7.2

*/
JSONObject film;

void setup() {
  film = loadJSONObject("film.json");
  String title = film.getString("title");
  String dir = film.getString("director");
  int year = film.getInt("year");
  float rating = film.getFloat("rating");
  println(title + " by " + dir + ", " + year);
  println("Rating: " + rating);
}
