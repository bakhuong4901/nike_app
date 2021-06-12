import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  State<AnimatedContainerDemo> createState() {
    return _AnimatedContainerDemoState();
  }
}
  class _AnimatedContainerDemoState extends State<AnimatedContainerDemo>{
    Alignment _alignment = Alignment.center;
    double _animatedHeight = 200.0;
    double _animatedWidth = 400.0;
    double _iconHeight = 180.0;
    double _iconWidth = 180.0;
    Color _animatedColor = Colors.red;
    bool _isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 24),
          child: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _animatedWidth,
              height: _animatedHeight,
              color: Colors.red,
              curve: Curves.fastOutSlowIn,
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  height: _iconHeight,
                  width: _iconWidth,
                  child: FlutterLogo(
                    textColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () => setState(() {
                _animatedWidth == 400.0
                    ? _isAnimated = true
                    : _isAnimated = false;

                _isAnimated
                    ? _alignment = Alignment.topCenter
                    : _alignment = Alignment.center;

                _isAnimated ? _animatedWidth = 200.0 : _animatedWidth = 400.0;

                _isAnimated
                    ? _animatedHeight = MediaQuery.of(context).size.height - 200
                    : _animatedHeight = 200.0;
                _isAnimated
                    ? _animatedColor = Colors.lightBlue
                    : _animatedColor = Colors.red;
                _isAnimated ? _iconWidth = 100.0 : _iconWidth = 180.0;
                _isAnimated ? _iconHeight = 100.0 : _iconHeight = 180.0;
              }),
          icon: Icon(
            Icons.movie_filter,
            color: Colors.deepPurpleAccent,
          ),
          label: Text(
            'Animate',
            style: TextStyle(color: Colors.deepOrangeAccent),
          )),
    );
  }
}
