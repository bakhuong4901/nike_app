import 'package:flutter/material.dart';

class ClipRRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: Container(
        child: Material(
          color: Colors.white,
          shadowColor: Colors.brown,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              heightFactor: 1,
              widthFactor: 1,
              child: Container(
                color: Colors.brown,
                width: 60,
                height: 50,
                child: Icon(
                  Icons.accessible_forward,
                  color: Colors.black26,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
