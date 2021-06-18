import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Text('Pure Water'),
          ),
          SizedBox(
            width: 300,
            height: 500,
            child: Text('Mac'),
          ),
        ],
      ),
    );
  }
}
