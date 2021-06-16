import 'package:flutter/material.dart';

class AbsorbPointDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absorb Point'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Boom'),
            ),
          ),
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: AbsorbPointer(
              absorbing: false,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: (){},
                child: Text('Lucy'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
