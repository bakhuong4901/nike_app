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
      body: AnimatedList(
        initialItemCount: teams.length,
        itemBuilder: (context, index, animation) => ListTeamWidget(
          team: teams[index],
        ),
      ),
    );
  }

  //
  // Widget _buildItem(String items, int index) {
  //   return ListTile(
  //     title: Text(
  //       items,
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //     leading: CircleAvatar(
  //       radius: 30,
  //       backgroundColor: Colors.amber,
  //     ),
  //   );
  // }

  // final List<String> items = [
  //   'Premier League',
  //   'Laliga',
  //   'Bundesliga',
  //   'Ligue 1',
  //   'Serie A'
  // ];

  titleText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Text(
        'Chon giai dau',
        style: TextStyle(color: Colors.black, fontSize: 28),
      ),
    );
  }
}
