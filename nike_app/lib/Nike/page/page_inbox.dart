import 'package:flutter/material.dart';

class PageInbox extends StatefulWidget {
  const PageInbox({Key? key}) : super(key: key);

  @override
  _PageInboxState createState() => _PageInboxState();
}

class _PageInboxState extends State<PageInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inbox',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 1,
      ),
      body: ListInBox(),
    );
  }
}

class ListInBox extends StatelessWidget {
  const ListInBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        ListTileInbox(
            avatar: 'Images/inbox.jpeg',
            title: 'Welcome to Nike',
            subTile1: 'Your benefit start immediately',
            subTile2: '1 minute ago'),
        ListTileInbox(
            avatar: 'Images/12.jpeg',
            title: 'Welcome to the Nike App',
            subTile1:
                "Thanks you for Joining Us a Member in the Nike App.Let's get you started",
            subTile2: '1 minute ago'),
      ]).toList(),
    );
  }
}

class ListTileInbox extends StatelessWidget {
  const ListTileInbox(
      {Key? key,
      required this.avatar,
      required this.title,
      required this.subTile1,
      required this.subTile2})
      : super(key: key);
  final String avatar;
  final String title;
  final String subTile1;
  final String subTile2;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 50,
          maxWidth: 50,
          minHeight: 50,
          minWidth: 50,
        ),
        child: Image.asset(
          avatar,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            subTile1,
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(height: 10),
          Text(
            subTile2,
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
