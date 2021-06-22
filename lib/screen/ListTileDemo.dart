import 'package:flutter/material.dart';

class ListTileDemo extends StatefulWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  _ListTileDemoState createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 50,
              ),
              title: Text("Widget the week"),
              subtitle: Text("#1"),
              onTap: () {},
              trailing: Icon(Icons.drag_handle_outlined),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 50,
              ),
              title: Text("Widget the week"),
              subtitle: Text("#2"),
              onTap: () {},
              trailing: Icon(Icons.drag_handle_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
