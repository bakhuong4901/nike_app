import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_kca/API_and_Parsed/Items.dart';

Widget customlist(Items items) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
          ),
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(items.owner.avatar_url),
          ),
        ),
      ],
    ),
  );
}
