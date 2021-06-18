import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                ),
                child: Text(
                  'Delicious Candy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 100,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Tap me !'),
                ),
              ),
            ),
          ),
        ],
      ),

      //     child: Text(
      //       'Delicious Candy',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         color: Colors.lightBlueAccent,
      //         fontSize: 32,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
