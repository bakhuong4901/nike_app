
import 'package:flutter/material.dart';

void main(){
runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khuong Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeAreaDemo (title: 'Khuong Demo Home Page'),
    );
  }
}
class SafeAreaDemo extends StatefulWidget{
  const SafeAreaDemo ({Key? key,required this.title}):super(key: key);
  final String title;
  @override
  State<SafeAreaDemo> createState() {
    return _SafeAreaDemoState();
  }
}
class _SafeAreaDemoState extends State<SafeAreaDemo>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Text ('Khuong demo'),
        top: true,
        bottom:true,
        left: false,
        right: true,
      ),
    );
  }
}