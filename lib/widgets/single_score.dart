import 'package:flutter/material.dart';

class SingleScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "17.1%",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Body Fat",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
