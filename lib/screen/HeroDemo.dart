import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Hero(
          tag: 'flutterLogo',
          child: GestureDetector(
              child: FlutterLogo(
                size: 200.0,
              ),
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HeroDemoDetail()),
                  ))),
    );
  }
}

class HeroDemoDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Center(
        child: Hero(
          tag: 'flutterLogo',
          child: FlutterLogo(size: 500.0,),
        ),
      ),
    );
  }
}
