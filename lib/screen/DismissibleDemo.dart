import 'package:flutter/material.dart';

class DismissibleDemo extends StatelessWidget {
  List<int> item = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, int index) {
          return Dismissible(
            direction: DismissDirection.horizontal,
            key: ValueKey<int>(item[index]),
            child: ListTile(
              title: Text('Item ${item[index]}'),
            ),
            background: Container(
              color: Colors.green,
              child: Icon(Icons.check),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Icon(Icons.cancel),
            ),
            onDismissed: (DismissDirection) {
              item.removeAt(index);
            },
          );
        },
      ),
    );
  }
}
