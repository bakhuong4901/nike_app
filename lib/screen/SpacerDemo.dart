import 'package:flutter/material.dart';

class SpacerDemo extends StatelessWidget {
  const SpacerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spacer'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    'Sp',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              // Spacer(
              //   flex: 2,
              // ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Center(
                  child: Text('ac', style: TextStyle(fontSize: 32)),
                ),
              ),
              // Spacer(
              //   flex: 5,
              // ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Center(
                  child: Text(
                    'er',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
              // Spacer(
              //   flex: 9,
              // ),
            ],
          ),
        ));
  }
}
