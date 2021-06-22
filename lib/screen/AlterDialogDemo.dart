import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlterDialogDemo extends StatelessWidget {
  const AlterDialogDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AlterDialog'),
        ),
        body: CupertinoAlertDialog(
          title: Text('Accept?'),
          content: Text('Do you accept?'),
          actions: [
            CupertinoDialogAction(child: Text("No",style: TextStyle(color: Colors.blue),)),
            CupertinoDialogAction(child: Text("Yes",style: TextStyle(color: Colors.blue),)),
          ],
        ));
  }
}
