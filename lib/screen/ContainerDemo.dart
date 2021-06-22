import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.amber,
        width: 200,
        height: 200,
      ),
    );
  }
}
