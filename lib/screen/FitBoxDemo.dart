import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.brown,
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
