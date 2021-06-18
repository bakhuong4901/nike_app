import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.cyan,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
