class Wind {
  int _deg;
  double _speed;

  Wind(parsedJson) {
    _deg = parsedJson['deg'];
    _speed = parsedJson['speed'];
  }

  // GETTER
  int get deg => _deg;
  double get speed => _speed;


  // SETTER
  set deg(int value) {
    _deg = value;
  }

  set speed(double value) {
    _speed = value;
  }
}