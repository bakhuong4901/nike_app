import 'package:flutter/material.dart';

class ToggleButtonDemo extends StatelessWidget {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButton'),
      ),
      body: ToggleButtons(
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.call),
          Icon(Icons.cake),
        ],
        isSelected: isSelected,
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      ),
    );
  }

  void setState(Function() param0) {}
}
