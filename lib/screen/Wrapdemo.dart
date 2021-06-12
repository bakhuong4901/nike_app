import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  State<WrapDemo> createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warp'),
      ),
      body: Wrap(
        alignment: WrapAlignment.end,
        spacing: 10.0,
        runSpacing: 20.0,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green),
            height: 100,
            width: 100,
            child: Text('Fashion',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            height: 100,
            width: 100,
            child: Text('Liftstyle',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.deepOrange),
            height: 100,
            width: 100,
            child: Text('Nature',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.deepPurpleAccent),
            height: 100,
            width: 100,
            child: Text('Sports',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
