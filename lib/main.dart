import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gypc/views/widgets/splashscreen.dart';
import 'package:gypc/views/widgets/homescreen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
