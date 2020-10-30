class WeatherItem {
  String _icon, _description, _main;
  int _id;

  WeatherItem(parsedJson) {
    _icon = parsedJson['icon'];
    _description = parsedJson['description'];
    _main = parsedJson['main'];
    _id = parsedJson['id'];
  }

  // GETTER
  int get id => _id;
  String get main => _main;
  String get description => _description;
  String get icon => _icon;

  //SETTER
  set main(String val) {
    _main = val;
  }

  set icon(String val) {
    _icon = val;
  }

  set description(String val) {
    _description = val;
  }
  
  set id(int val) {
    _id = val;
  }
}
