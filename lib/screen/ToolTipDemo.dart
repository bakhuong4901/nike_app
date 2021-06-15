import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Tip'),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Tooltip(
              message: 'High quality',
              child: IconButton(
                icon: Icon(Icons.high_quality_outlined),
                onPressed: () {},
              ),
            ),
        Tooltip(
          message: 'Full screen',
          child: IconButton(
            icon: Icon(Icons.fullscreen),
            onPressed: () {
              Text('HQ');
            },
          ),
        ),
        Tooltip(
          message: 'Filter',
          child: IconButton(
            icon: Icon(Icons.filter),
            onPressed: () {
            },
          ),

        ),
        ],
        ),
      ),
    );
  }
}
