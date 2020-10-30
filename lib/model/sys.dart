class Sys {
  String _country;
  int _sunrise;
  int _sunset;
  int _id;
  int _type;
  double _message;

  Sys(parsedJson) {
    _country = parsedJson['country'];
    _sunrise = parsedJson['sunrise'];
    _sunset = parsedJson['sunset'];
    _id = parsedJson['id'];
    _type = parsedJson['type'];
    _message = parsedJson['message'];
  }

  // GETTER
  double get message => _message;
  int get type => _type;
  int get id => _id;
  int get sunset => _sunset;
  int get sunrise => _sunrise;
  String get country => _country;

  // SETTER
  set message(double value) {
    _message = value;
  }

  set type(int value) {
    _type = value;
  }

  set id(int value) {
    _id = value;
  }

  set sunset(int value) {
    _sunset = value;
  }

  set sunrise(int value) {
    _sunrise = value;
  }

  set country(String value) {
    _country = value;
  }
}
