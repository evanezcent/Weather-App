class Coord {
  double _lon;
  double _lat;

  Coord(parsedJson) {
    _lon = parsedJson['lon'];
    _lat = parsedJson['lat'];
  }

  // GETTER 
  double get lat => _lat;
  double get lon => _lon;

  // SETTER 
  set lat(double value) {
    _lat = value;
  }

  set lon(double value) {
    _lon = value;
  }
}