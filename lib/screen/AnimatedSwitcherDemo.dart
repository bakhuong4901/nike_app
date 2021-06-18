import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({Key? key}) : super(key: key);

  @override
  _AnimatedSwitcherDemoState createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Text(
              '$_count',
              key: ValueKey(_count),
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: Text('Increment'))
        ],
      ),
    );
  }
}
