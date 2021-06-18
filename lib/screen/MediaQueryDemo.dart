import 'package:flutter/material.dart';

class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQueryF'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
