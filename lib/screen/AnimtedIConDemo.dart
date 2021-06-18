import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isPlaying = false;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    super.initState();
  }

  void toggleIcon() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? controller.forward() : controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              width: 100,
              height: 100,
              child: IconButton(
                iconSize: 10,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  size: 50,
                  progress: controller,
                ),
                onPressed: toggleIcon,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              width: 100,
              height: 100,
              child: IconButton(
                iconSize: 10,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.home_menu,
                  size: 50,
                  progress: controller,
                ),
                onPressed: toggleIcon,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              width: 100,
              height: 100,
              child: IconButton(
                iconSize: 10,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.close_menu,
                  size: 50,
                  progress: controller,
                ),
                onPressed: toggleIcon,
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Container(
      //     child: IconButton(
      //       splashColor: Colors.transparent,
      //       highlightColor: Colors.transparent,
      //       iconSize: 150,
      //       icon: AnimatedIcon(
      //         icon: AnimatedIcons.play_pause,
      //         size: 50,
      //         progress: controller,
      //       ),
      //       onPressed: toggleIcon,
      //     ),
      //   ),
      // ),
    );
  }
}
