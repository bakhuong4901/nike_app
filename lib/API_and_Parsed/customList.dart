import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_kca/API_and_Parsed/Items.dart';

Widget customlist(Items items) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
          ),
        ]),
    child: Row(
      children: [
        Flexible(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              items.owner.avatar_url,
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
              child: Text(items.full_name),
            ))
      ],
    ),
  );
}
