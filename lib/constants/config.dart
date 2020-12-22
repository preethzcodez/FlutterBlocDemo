class Config {
  static final String baseUrl = "http://api.tvmaze.com";

  static const Map END_POINTS = {
    'showsList': '/shows'
  };

  static String endPoint(endPoint) {
    return baseUrl + END_POINTS[endPoint];
  }
}