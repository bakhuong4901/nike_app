import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget {
  @override
  State<FadeTransitionDemo> createState() {
    return FadeTransitionDemoState();
  }
}

class FadeTransitionDemoState extends State<FadeTransitionDemo> {


  @override
  void initState() {
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Transition'),
      ),
    );
  }
}
