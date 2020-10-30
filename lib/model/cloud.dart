class Clouds {
  int _all;

  Clouds(parsedJson)  {
    _all = parsedJson['all'];
  }

  // GETTER
  int get all => _all;

  // SETTER
  set all(int value) {
    _all = value;
  }
}