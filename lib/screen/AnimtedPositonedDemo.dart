import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: [
              AnimatedPositioned(
                  top: _selected ? 50 : 150,
                  width: _selected ? 200 : 50,
                  height: _selected ? 50 : 200,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected = !_selected;
                      });
                    },
                    child: Container(
                      color: Colors.brown,
                      child:Center(child: Text('ối dồi ôi'),),
                    ),
                  ),
                  duration: Duration(seconds: 2))
            ],
          ),
        ),
      ),
    );
  }
}
