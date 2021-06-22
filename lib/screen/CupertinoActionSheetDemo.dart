import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetDemo extends StatefulWidget {
  const CupertinoActionSheetDemo({Key? key}) : super(key: key);

  @override
  _CupertinoActionSheetDemoState createState() =>
      _CupertinoActionSheetDemoState();
}

class _CupertinoActionSheetDemoState extends State<CupertinoActionSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CupertinoAction'),
        ),
        body: Center(
          child: CupertinoButton(
            child: Text(
              'CLick me',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              final act = CupertinoActionSheet(
                title: Text('Favorite Dessert'),
                message: Text(
                    'Please select the best dessert from the options below.'),
                actions: [
                  CupertinoActionSheetAction(
                    child: Text('Profiteroles'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Cannolis'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Trifie'),
                    onPressed: () {},
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  isDefaultAction: true,
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              );
              showCupertinoModalPopup(
                  context: context, builder: (context) => act);
            },
          ),
        ));
  }
}
