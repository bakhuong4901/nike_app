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
      home: const Wrapdemo(title: 'Khuong Demo Home Page'),
    );
  }
}

class Wrapdemo extends StatefulWidget {
  const Wrapdemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Wrapdemo> createState() => _WrapdemoState();
}

class _WrapdemoState extends State<Wrapdemo> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      // direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        Container(
          child: Text('Lucifer'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Container(
          child: Text('Lucy'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.lightGreen),
        ),
        Container(
          child: Text('DArt'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        Container(
          child: Text('mInus'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.orange),
        ),
        Container(
          child: Text('1280'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.deepPurple),
        ),
        Container(
          child: Text('bb'),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.brown),
        ),
      ],
    );
  }
}
