import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilDemo extends StatelessWidget {
  const BackdropFilDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backdrop Filter'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Text('\$' * 10000,style: TextStyle(backgroundColor: Colors.green),),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 300.0,
                  height: 300.0,
                  child: Text('KhuongXCBN'),
                  color: Colors.brown.withOpacity(1.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
