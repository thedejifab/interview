import 'package:flutter/material.dart';

AppBar myAppBar(title) => AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
    );
