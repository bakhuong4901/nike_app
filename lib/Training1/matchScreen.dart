import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/list_itemData.dart';
import 'package:flutter_training_kca/Training1/list_itemmodel.dart';

class matchScreen extends StatefulWidget {
  @override
  _matchScreenState createState() => _matchScreenState();
}

class _matchScreenState extends State<matchScreen> {
  final List<ListItem> items = List.from(listItems);
  final List<ListItem> teams = List.from(listTeam);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chọn giải đấu",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListItemWidget(
                      item: items[index],
                    );
                  }),
            ),
          ],
        ),
      ),
      // body: AnimatedList(
      //   initialItemCount: teams.length,
      //   itemBuilder: (context, index, animation) => ListItemWidget(
      //     item: items[index],
      //   ),
      // ),
    );
  }
}
