import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: Container(
        alignment: Alignment.center,
        width: 200,
        height: 100,
        color: Colors.cyan,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            child: Text('Click'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
          ),
        ),
      ),
    );
  }
}
