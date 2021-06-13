import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  State<PageViewDemo> createState() {
    return PageViewDemoState();
  }
}

class PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Page View Widget',
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
      ),
      body: PageView(
        // controller: controller,
        // scrollDirection: scrollDriection,
        pageSnapping: true,
        children: [
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.lightBlue,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text('Page 1', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.deepOrangeAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text('Page 2', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.deepPurpleAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text('Page 3', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
