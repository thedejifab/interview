import 'package:app/pages/cals_burned.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/map.dart';
import 'package:app/pages/step_counts.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),

          )
        )
      ),
      home: HomeScreen(),
    );
  }
}
