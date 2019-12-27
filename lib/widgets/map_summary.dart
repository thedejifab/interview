import 'package:flutter/material.dart';

class MapSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.alarm),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "4926",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(
              "Steps",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
