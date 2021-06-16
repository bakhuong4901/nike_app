import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimatedBuilderDemoState createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 20), vsync: this)
          ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: FlutterLogo(size: 200,),
          builder: (context, Widget? child) {
            return Transform.rotate(
              angle: controller.value * 2.0 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
