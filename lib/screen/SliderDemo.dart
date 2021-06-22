import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({Key? key}) : super(key: key);

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Slider(
          value: _value,
          max: 100,
          min: 0,
          divisions: 5,
          label: _value.round().toString(),
          onChanged: (double rating) {
            setState(() {
              _value = rating;
            },
            );
          },

        ),
      ),
    );
  }
}
