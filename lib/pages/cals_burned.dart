import 'package:app/models/rating.dart';
import 'package:app/widgets/appbar.dart';
import 'package:app/widgets/detail_header.dart';
import 'package:app/widgets/single_detail.dart';
import 'package:flutter/material.dart';

class CalsBurned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Cals Burned"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DetailHeader(
              totalValue: "12,500",
              rating: Rating.GOOD,
              monthBurned: "July",
            ),
            SizedBox(height: 50),
            SingleDetail(
              date: "July 05",
              value: "2889",
            ),
            SingleDetail(
              date: "July 05",
              value: "2889",
            ),
            SingleDetail(
              date: "July 05",
              value: "2889",
            ),
          ],
        ),
      ),
    );
  }
}
