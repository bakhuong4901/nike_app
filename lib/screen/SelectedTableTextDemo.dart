import 'package:flutter/material.dart';

class SelectedTableTextDemo extends StatelessWidget {
  const SelectedTableTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectedTableText'),
      ),
      body: SelectableText(
        'Lose Control',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
