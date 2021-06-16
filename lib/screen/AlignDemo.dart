import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  _AlignDemoState createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Center(
        child: Container(
          height: 500.0,
          width: 500.0,
          color: Colors.brown,
          child: Align(
            alignment: Alignment.center,
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
