import 'dart:math';

import 'package:flutter/material.dart';

class TranFormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TranForm'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.skewY(0.3)..rotateZ((-pi) / 12.0),
            child: Container(
              padding: EdgeInsets.all(12.0),
              color: Colors.brown,
              child: Container(
                child: Text('KhuongXCBN'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
