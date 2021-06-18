import 'package:flutter/material.dart';

class ValueListenBuilderDemo extends StatefulWidget {
  const ValueListenBuilderDemo({Key? key}) : super(key: key);

  @override
  _ValueListenBuilderDemoState createState() => _ValueListenBuilderDemoState();
}

class _ValueListenBuilderDemoState extends State<ValueListenBuilderDemo> {
  final ValueNotifier<int> count = ValueNotifier<int>(0);
  final Widget goodJob = const Text('Good job!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueListenBuilder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('You have pushed the button this many time:'),
            ValueListenableBuilder(
              valueListenable: count,
              builder: (context, int value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('$value'),
                    child!,
                  ],
                );
              },
              child: goodJob,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => count.value += 1,
      ),
    );
  }
}
