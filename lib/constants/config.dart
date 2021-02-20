class Config {
  static final String baseUrl = "http://api.tvmaze.com";

  static const Map END_POINTS = {
    'showsList': '/shows?page=1'
  };

  static String endPoint(endPoint) {
    return baseUrl + END_POINTS[endPoint];
  }
}