import 'package:flutter/material.dart';

class PositionedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        height: 1000,
        width: 500,
        child: Stack(
          children: [
            Positioned(
              bottom: 50,
              top: 50,
              right: 50,
              left: 50,
              child: Container(
                color: Colors.red,
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
