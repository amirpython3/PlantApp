import 'package:flutter/material.dart';

import 'package:planetapp/screens/HomePage.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'plant app', home: HomePage());
  }
}
