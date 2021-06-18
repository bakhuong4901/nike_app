import 'package:flutter/material.dart';

class SemanticsDemo extends StatefulWidget {
  const SemanticsDemo({Key? key}) : super(key: key);

  @override
  _SemanticsDemoState createState() => _SemanticsDemoState();
}

class _SemanticsDemoState extends State<SemanticsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
      ),
      body: Stack(
        children: [
          Positioned(
            width: 50,height: 50,
            child: Semantics(
              label: "Cyan",
              child: Container(
                color: Colors.cyan,
              ),
            ),),
          Positioned(
            width: 50,height: 50,top: 25,left: 25,
            child: Semantics(
              label: "Brown",
              child: Container(
                color: Colors.brown,
              ),
            ),),
          Positioned(
            width: 50,height: 50,top: 50,left: 50,
            child: Semantics(
              label: "GreenAcent",
              child: Container(
                color: Colors.greenAccent,
              ),
            ),),
        ],
      ),
    );
  }
}
