class Main {
  double _temp;
  double _tempMin;
  int _humidity;
  int _pressure;
  double _tempMax;

  Main(parsedJson) {
    _temp = parsedJson['temp'];
    _tempMin = parsedJson['temp_min'];
    _humidity = parsedJson['humidity'];
    _pressure = parsedJson['pressure'];
    _tempMax = parsedJson['temp_max'];
  }

  // GETTER
  double get tempMax => _tempMax;
  int get pressure => _pressure;
  double get tempMin => _tempMin;
  double get temp => _temp;
  int get humidity => _humidity;

  // SETTER
  set tempMax(double value) {
    _tempMax = value;
  }

  set pressure(int value) {
    _pressure = value;
  }

  set humidity(int value) {
    _humidity = value;
  }

  set tempMin(double value) {
    _tempMin = value;
  }

  set temp(double value) {
    _temp = value;
  }
}
