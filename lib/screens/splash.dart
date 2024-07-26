import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sports_app/screens/onboarding-screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromRGBO(38, 36, 60, 1.0),
      body: Center(
        child: Image.asset('assets/splash-screen.png'),
      ),
    );
  }
}

