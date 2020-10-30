import 'package:weather_app/model/response.dart';
import 'package:weather_app/presistance/api.dart';

class Repository {
  ApiProvider appApi = ApiProvider();
  Future<WeatherResponse> fetchWeather() => appApi.fetchLondonWeather();
}
