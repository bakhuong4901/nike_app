import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Paint'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: CustomPaint(
            foregroundPainter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    //draw body
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
    //draw mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius/2), 0, pi,
        false, smilePaint);
    //draw the eyes
    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 20, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 20, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
