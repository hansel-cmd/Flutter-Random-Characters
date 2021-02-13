import 'package:flutter/material.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/loading.dart';
import 'package:test_app/pages/location.dart';
import 'package:test_app/pages/personalInfo.dart';

import 'pages/edit_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/personalInfo': (context) => PersonalInfo(),
      '/home': (context) => Home(),
      '/location': (context) => Location(),
      '/edit_location': (context) => EditLocation()
    },
  ));
}

