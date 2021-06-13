import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  State<OpacityDemo> createState() {
    return OpacityDemoState();
  }
}

class OpacityDemoState extends State<OpacityDemo> {
  double s1 = 1.0, s2 = 1.0, s3 = 1.0, s4 = 1.0;

  Widget _colorsqure(Color color) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Click on square below to make invisible',
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                child: Opacity(
                  opacity: s1,
                  child: _colorsqure(Colors.orange),
                ),
                onTap: () {
                  setState(() => this.s1 = 1.0 - this.s1);
                },
              ),
              GestureDetector(
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: s2,
                  child: _colorsqure(Colors.black),
                ),
                onTap: () {
                  setState(() => this.s2 = 1.0 - this.s2);
                },
              ),
              GestureDetector(
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: s3,
                  child: _colorsqure(Colors.deepPurpleAccent),
                ),
                onTap: () {
                  setState(() => this.s3 = 1.0 - this.s3);
                },
              ),
              GestureDetector(
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: s4,
                  child: _colorsqure(Colors.pinkAccent),
                ),
                onTap: () {
                  setState(() => this.s4 = 1.0 - this.s4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
