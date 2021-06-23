import 'package:flutter/material.dart';
import 'package:flutter_training_kca/API_and_Parsed/Screen_User_List.dart';

void main() {
  runApp(ScreenApp());
}

class ScreenApp extends StatelessWidget {
  const ScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenUserList(),
    );
  }
}
