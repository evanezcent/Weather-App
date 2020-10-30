import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/model/response.dart';

class ApiProvider {
  Client client = Client();
  final baseUrl =
      'https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22';

  Future<WeatherResponse> fetchLondonWeather() async {
    final res = await client.get(baseUrl);
    print("FETCHING . . .");
    print(res.body.toString());

    if (res.statusCode == 200) {
      return WeatherResponse.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Failed to load weather !");
    }
  }
}
