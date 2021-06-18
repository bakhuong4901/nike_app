import 'package:flutter/material.dart';

class PlaceHoldDemo extends StatelessWidget {
  const PlaceHoldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Hold'),
      ),
      body: Center(
        child: Container(
          color: Colors.cyan,
          width: 200,
          height: 100,
          child: Placeholder(
            fallbackWidth: 300,
            fallbackHeight: 300,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
