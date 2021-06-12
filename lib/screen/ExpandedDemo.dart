import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              height: 100,
              width: 100,
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 100,
                width: 100,
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              height: 100,
              width: 100,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
