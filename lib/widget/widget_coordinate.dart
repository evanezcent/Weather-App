import 'package:flutter/material.dart';
import 'package:weather_app/model/coordinate.dart';
import 'package:weather_app/widget/widget_divider.dart';

class BuildCoordinate extends StatelessWidget {
  const BuildCoordinate({Key key, this.coordinate}) : super(key: key);
  final Coord coordinate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Coordinate",
            style: TextStyle(
                color: Color.fromRGBO(0, 123, 174, 100), fontSize: 20.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Latitude : " + coordinate.lat.toString()),
            verticalDivider(),
            Text("Longitude : " + coordinate.lon.toString())
          ],
        ),

      ],
    );
  }
}
