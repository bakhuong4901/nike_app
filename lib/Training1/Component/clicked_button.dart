import 'package:flutter/material.dart';

class ClickedButton extends StatelessWidget {
  const ClickedButton({
    Key? key,
    required this.title,
    required this.color,
    required this.callBack,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
      onPressed: callBack,
    );
  }
}
