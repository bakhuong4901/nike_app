import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_app/Nike/Screens/introducton_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => IntroductionScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Image.asset(
            'Images/logo_nike.jpeg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
