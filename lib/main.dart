import 'package:flutter/material.dart';
import 'package:petopia/Modules/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petopia',
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
