import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: Container(
        height: 200.0,
        child: Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
