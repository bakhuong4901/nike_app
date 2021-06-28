import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
    required this.object,
  }) : super(key: key);

  final SelectObjectModel object;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  object.imageUrl,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  object.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      );
}
