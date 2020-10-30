import 'package:flutter/material.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/model/response.dart';
import 'package:weather_app/widget/widget_coordinate.dart';
import 'package:weather_app/widget/widget_divider.dart';
import 'package:weather_app/widget/widget_main.dart';
import 'package:weather_app/widget/widget_sys.dart';
import 'package:weather_app/widget/widget_wind.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    weatherBloc.fetchWeather();
    return StreamBuilder(
      stream: weatherBloc.weather,
      builder: (context, AsyncSnapshot<WeatherResponse> snapshot) {
        if (snapshot.hasData) {
          return BuildWeather(data: snapshot.data);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class BuildWeather extends StatelessWidget {
  const BuildWeather({
    Key key,
    this.data,
  }) : super(key: key);

  final WeatherResponse data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text("Weather in ${data.name}",
                style: TextStyle(
                    color: Color.fromRGBO(0, 123, 174, 100), fontSize: 40.0),
                textAlign: TextAlign.center),
          ),
          BuildCoordinate(coordinate: data.coord),
          BuildMain(main: data.main),
          BuildWind(data.wind),
          BuildSys(
            sys: data.sys,
          )
        ],
      ),
    );
  }
}
