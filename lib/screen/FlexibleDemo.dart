import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  color: Colors.cyan,
                )),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.brown,
              ),
              flex: 1,
            ),
            Flexible(
                flex: 3,
                child: Container(
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
