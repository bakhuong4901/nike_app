import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.deepPurpleAccent,
                  width: 100,
                  height: 180,
                  child: Center(
                    child: Text('1'),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.deepOrangeAccent,
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text('2'),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.orangeAccent,
                  width: 100,
                  height: 200,
                  child: Center(
                    child: Text('3'),
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 100,
                  height: 200,
                  child: Center(
                    child: Text('1'),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.yellow,
                  width: 100,
                  height: 200,
                  child: Center(
                    child: Text('2'),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.grey,
                  width: 100,
                  height: 200,
                  child: Center(
                    child: Text('3'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
