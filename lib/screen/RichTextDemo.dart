import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(style: DefaultTextStyle.of(context).style, children: [
            TextSpan(text: 'I ', style: TextStyle(color: Colors.cyan)),
            TextSpan(text: 'am ', style: TextStyle(color: Colors.cyan)),
            TextSpan(
                text: 'IronMan',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan))
          ]),
        ),
      ),
    );
  }
}
