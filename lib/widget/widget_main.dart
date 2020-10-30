import 'package:flutter/material.dart';
import 'package:weather_app/model/main.dart';

class BuildMain extends StatelessWidget {
  final Main main;

  const BuildMain({Key key, this.main}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            "Main",
            style: TextStyle(
                color: Color.fromRGBO(0, 123, 174, 100), fontSize: 18.0),
          ),
        ),
        Text("Temperature: " + main.temp.toString() + " Kelvin"),
        Text("Pressure: " + main.pressure.toString() + " hPa"),
        Text("Humidity: " + main.humidity.toString() + " %"),
        Text("Highest temperature: " + main.tempMax.toString() + " Kelvin"),
        Text("Lowest temperature: " + main.tempMin.toString() + " Kelvin"),
      ],
    );
  }
}
