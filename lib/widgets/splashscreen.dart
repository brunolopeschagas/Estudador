import 'package:estudador/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new SplashScreen(
          seconds: 3,
          navigateAfterSeconds: new HomePage(),
          image: new Image.asset('assets/icon.png'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.red,
        )
      ],
    );
  }
}
