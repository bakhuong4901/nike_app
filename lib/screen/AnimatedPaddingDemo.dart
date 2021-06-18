import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({Key? key}) : super(key: key);

  @override
  _AnimatedPaddingDemoState createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  double _padValue = 0;

  void _updatePadding(double value) {
    setState(() {
      _padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(_padValue),
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              color: Colors.blue,
            ),
          ),
          Text('Padding:$_padValue'),
          ElevatedButton(
              child: Text('Change Padding'),
              onPressed: () {
                setState(() {
                  _updatePadding(_padValue == 0 ? 100 : 0);
                });
              }),
        ],
      ),
    );
  }
}
