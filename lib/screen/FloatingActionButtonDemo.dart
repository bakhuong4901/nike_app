import 'package:flutter/material.dart';

class FloatActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Float Action Button'),
        backgroundColor: Colors.black,
        leading: Icon(Icons.list),
      ),
      body: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.only(bottom: 50),
          color: Colors.blue,
          curve: Curves.fastOutSlowIn,
          height: 400,
          width: 400,
          duration: Duration(seconds: 1),
          child: FlutterLogo(

          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.message,color: Colors.red,),
          onPressed: () {
            Text('press');
          },
          label: Text('Message')),
    );
  }
}
