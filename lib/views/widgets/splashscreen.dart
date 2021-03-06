import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:gypc/views/widgets/loginscreen/loginscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new LoginScreenPage(),
      backgroundColor: Colors.white,
      title: new Text(
        'Gypc',
        style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w500,
            fontSize: 35),
      ),
      image: Image.asset('assets/logos/gypsy.png'),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.deepPurple,
    );
  }
}
