import 'package:rxdart/rxdart.dart';
import 'package:weather_app/model/response.dart';
import 'package:weather_app/presistance/repository.dart';

class WeatherBloc {
  Repository _repository = Repository();
  final _weatherFetcher = PublishSubject<WeatherResponse>();

  Stream<WeatherResponse> get weather => _weatherFetcher.stream;

  fetchWeather() async {
    WeatherResponse res = await _repository.fetchWeather();
    _weatherFetcher.sink.add(res);
  }

  dispose() {
    _weatherFetcher.close();
  }
}

final weatherBloc = WeatherBloc();
