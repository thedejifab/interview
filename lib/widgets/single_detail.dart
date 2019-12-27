import 'package:flutter/material.dart';

class SingleDetail extends StatelessWidget {
  final String value;
  final String unit;
  final String date;

  const SingleDetail({
    Key key,
    @required this.value,
    this.unit = "Cals",
    @required this.date,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Row(
              children: <Widget>[
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  unit,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.grey,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
