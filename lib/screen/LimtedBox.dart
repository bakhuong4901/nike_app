import 'package:flutter/material.dart';

class LimtedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited Box'),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: LimitedBox(
          maxHeight: 150,
          maxWidth: 150,
          child: Container(color: Colors.blue),
        ),
      ),
    );
  }
}
