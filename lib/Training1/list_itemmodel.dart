import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final String urlImage;

  const ListItem({required this.title, required this.urlImage});
}

class ListItemWidget extends StatelessWidget {
  final ListItem item;

  const ListItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildItem();
  }

  Widget buildItem() => Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(item.urlImage),
          ),
          title: Text(
            item.title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      );
}
class ListTeam {
  final String title;
  final String urlImage;

  const ListTeam({required this.title, required this.urlImage});
}

class ListTeamWidget extends StatelessWidget {
  final ListItem team;

  const ListTeamWidget({required this.team, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildItem();
  }

  Widget buildItem() => Container(
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: ListTile(
      contentPadding: EdgeInsets.all(16),
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(team.urlImage),
      ),
      title: Text(
        team.title,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}
