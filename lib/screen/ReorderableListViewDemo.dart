import 'package:flutter/material.dart';

class ReorderableListViewDemo extends StatefulWidget {
  @override
  _ReorderableListViewDemoState createState() =>
      _ReorderableListViewDemoState();
}

class _ReorderableListViewDemoState extends State<ReorderableListViewDemo> {
  List<String> items = [
    "Java",
    "Flutter",
    "Lucy",
    "Cap",
    "Yone",
    "Denjiro",
    "Meme"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reoderable Listview'),
      ),
      body: ReorderableListView(
        header: Container(
          padding: EdgeInsets.all(25),
          color: Colors.greenAccent,
          child: Text('The list of context!'),
        ),
        children: items
            .map((task) => Container(
                  key: ValueKey(task),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 1, color: Colors.redAccent),
                    // borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    leading: Icon(Icons.airplanemode_active_sharp),
                    title: Text(
                      task,
                      style: TextStyle(fontSize: 24),
                    ),
                    trailing: Icon(Icons.drag_handle_outlined),
                  ),
                ))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final element = items.removeAt(oldIndex);
            items.insert(newIndex, element);
          });
        },
      ),
    );
  }
}
