import 'package:flutter/material.dart';


class SafeAreaDemo extends StatefulWidget {
  @override
  State<SafeAreaDemo> createState() {
    return _SafeAreaDemoState();
  }
}

class _SafeAreaDemoState extends State<SafeAreaDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe Area'),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Text(
                'Khuong Safe Area Demo',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Text('Ladyfist',textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}
