import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khuong Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedContainerDemo(title: 'Khuong Demo Home Page'),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<AnimatedContainerDemo> createState() {
    return _AnimatedContainerDemoState();
  }
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  Alignment _alignment = Alignment.center;
  double _animatedheight = 200.0;
  double _animatedWidth = 400.0;
  double _iconHeight = 180.0;
  double _iconWidth = 180.0;
  Color _animatedColor = Colors.red;
  bool _isAnimated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text('Animated container widget'),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 24),
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: _animatedWidth,
            width: _animatedWidth,
            color: _animatedColor,
            curve: Curves.fastOutSlowIn,
          ),
        ),
      )),
    );
  }
}
