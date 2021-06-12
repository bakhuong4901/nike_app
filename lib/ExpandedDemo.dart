import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khuong Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpandedDemo(title: 'Khuong Demo Home Page'),
    );
  }
}

class ExpandedDemo extends StatefulWidget {
  const ExpandedDemo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ExpandedDemo> createState() => _ExpandedDemoState();
}

class _ExpandedDemoState extends State<ExpandedDemo> {

  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Expanded(
         flex: 1,
         child: Container(
           decoration: BoxDecoration(color: Colors.blue),
           height: 100,
           width: 50,
         ),
       ),
       Expanded(
         flex: 2,
         child: Container(
           decoration: BoxDecoration(color: Colors.pink),
           height: 80,
           width: 100,
         ),
       ),
       Expanded(
         flex: 3,
         child: Container(
           decoration: BoxDecoration(color: Colors.yellow),
           height: 100,
           width: 50,
         ),
       ),
     ],
   );
  }
}

