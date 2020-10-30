import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/widget/widget_divider.dart';

class BuildSys extends StatelessWidget {
  const BuildSys({Key key, this.sys}) : super(key: key);

  final Sys sys;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('hh:mm:ss');
    var sunriseDate = DateTime.fromMillisecondsSinceEpoch(sys.sunrise * 1000);
    var sunsetDate = DateTime.fromMillisecondsSinceEpoch(sys.sunset * 1000);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Sys",
            style: TextStyle(
                color: Color.fromRGBO(0, 123, 174, 100), fontSize: 20),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Sunrise : ${dateFormat.format(sunriseDate)}"),
            verticalDivider(),
            Text("Sunset : ${dateFormat.format(sunsetDate)}"),
          ],
        )
      ],
    );
  }
}
