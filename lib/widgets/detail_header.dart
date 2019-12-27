import 'package:app/models/rating.dart';
import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  final String totalValue;
  final String unit;
  final String monthBurned;
  final Rating rating;
  final bool isSteps;

  const DetailHeader({
    Key key,
    @required this.totalValue,
    this.unit = "Cals",
    this.isSteps = false,
    @required this.monthBurned,
    @required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Container(
              width: 30,
              height: 30,
              child: Icon(
                Icons.card_travel,
              )),
          SizedBox(width: 10),
          Column(
            children: <Widget>[
              Text(
                totalValue,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "${isSteps ? "Worked" : "Burned"} in $monthBurned",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          Container(
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.3),
              border: Border.all(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                ratingMap[rating],
                style: TextStyle(color: Colors.green, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
