import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  const IndexedStackDemo({Key? key}) : super(key: key);

  @override
  _IndexedStackDemoState createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            child: IndexedStack(
              index: _index,
              children: <Widget>[
                Container(
                  color: Colors.pink,
                  child: Center(
                    child: Text('Page 1'),
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  child: Center(
                    child: Text('Page 2'),
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text('Page 3'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  if (_index <= 0) return;
                  setState(() {
                    _index -= 1;
                  });
                },
                child: Text(
                  "Prev",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_index >= 2) return;
                  setState(() {
                    _index += 1;
                  });
                },
                child: Text(
                  "Next",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
