import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Account.dart';
import 'package:flutter_training_kca/Training1/Register.dart';
import 'package:flutter_training_kca/Training1/SecureScreen.dart';
import 'package:flutter_training_kca/Training1/login.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training 1',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // home:RegisterScreen(),
        // SecureScreen(),
      home:loginScreen(),
      //AccountScreen(),
    );
  }
}
