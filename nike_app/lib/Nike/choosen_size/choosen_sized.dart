import 'package:flutter/material.dart';

class ChosenSizeScreen extends StatefulWidget {
  const ChosenSizeScreen({Key? key}) : super(key: key);

  @override
  _ChosenSizeScreenState createState() => _ChosenSizeScreenState();
}

class _ChosenSizeScreenState extends State<ChosenSizeScreen> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blue,
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
      //       child: Text(
      //         'Save Your Shoe Size',
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(80, 0, 80, 50),
      //       child: Text(
      //         'This  will help us reserve shoes for you an expedite your checkout process.',
      //         style: TextStyle(color: Colors.blueGrey, fontSize: 16),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      //       child: GridView.count(
      //         crossAxisCount: 6,
      //         mainAxisSpacing: 10,
      //         crossAxisSpacing: 10,
      //         children: List.generate(15, (index) {
      //           return Card(
      //             color: Colors.black,
      //             elevation: 10,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(5),
      //             ),
      //             child: Container(
      //               child: Text(
      //                 '${index + 0.5}',
      //                 style: TextStyle(color: Colors.black),
      //               ),
      //             ),
      //           );
      //         }),
      //       ),
      //     ),
      //   ],
      // ),
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(30, 100, 30, 10),
        crossAxisCount: 6,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        children: List.generate(15, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: Text('${index} ${index+0.5}',style: TextStyle(color: Colors.white),),
            ),
          );
        }),
      ),
    );
  }
}
