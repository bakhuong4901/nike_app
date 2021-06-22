import 'package:flutter/material.dart';

import 'key.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ta Demo',
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.green),
      home: DemoKeyScreen(),
    );
  }
}
