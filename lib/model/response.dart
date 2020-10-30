import 'package:weather_app/model/cloud.dart';
import 'package:weather_app/model/coordinate.dart';
import 'package:weather_app/model/main.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather_item.dart';
import 'package:weather_app/model/wind.dart';

class WeatherResponse {
  int _dt;
  Coord _coord;
  int _visibility;
  List<WeatherItem> _weather;
  String _name;
  int _cod;
  Main _main;
  Clouds _clouds;
  int _id;
  Sys _sys;
  String _base;
  Wind _wind;

  WeatherResponse.fromJson(Map<String, dynamic> parsedJson) {
    List<WeatherItem> weather = [];
    for (var item in parsedJson['weather']) {
      WeatherItem res = WeatherItem(item);
      weather.add(res);
    }
    _weather = weather;

    _dt = parsedJson['dt'];
    _visibility = parsedJson['visibility'];
    _name = parsedJson['name'];
    _cod = parsedJson['cod'];
    _id = parsedJson['id'];
    _base = parsedJson['base'];

    _coord = Coord(parsedJson['coord']);
    _main = Main(parsedJson['main']);
    _clouds = Clouds(parsedJson['clouds']);
    _sys = Sys(parsedJson['sys']);
    _wind = Wind(parsedJson['wind']);
  }

  // GETTER
  Wind get wind => _wind;
  String get base => _base;
  Sys get sys => _sys;
  int get id => _id;
  Clouds get clouds => _clouds;
  Main get main => _main;
  int get cod => _cod;
  String get name => _name;
  List<WeatherItem> get weather => _weather;
  int get visibility => _visibility;
  Coord get coord => _coord;
  int get dt => _dt;

  // SETTER
  set wind(Wind value) {
    _wind = value;
  }

  set base(String value) {
    _base = value;
  }

  set sys(Sys value) {
    _sys = value;
  }

  set id(int value) {
    _id = value;
  }

  set clouds(Clouds value) {
    _clouds = value;
  }

  set main(Main value) {
    _main = value;
  }

  set cod(int value) {
    _cod = value;
  }

  set name(String value) {
    _name = value;
  }

  set weather(List<WeatherItem> value) {
    _weather = value;
  }

  set visibility(int value) {
    _visibility = value;
  }

  set coord(Coord value) {
    _coord = value;
  }

  set dt(int value) {
    _dt = value;
  }
}
