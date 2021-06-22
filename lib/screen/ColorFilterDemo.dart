import 'package:flutter/material.dart';

class ColorFilterDemo extends StatelessWidget {
  const ColorFilterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorFilter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.modulate,
              ),
              child: Image.asset('Assets/man-city.jpeg'),
            ),
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.red,
                BlendMode.saturation,
              ),
              child: Image.asset('Assets/mu.png'),
            ),
          ],
        ),
      ),
    );
  }
}
