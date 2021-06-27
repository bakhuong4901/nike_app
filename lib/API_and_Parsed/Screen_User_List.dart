import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_kca/API_and_Parsed/ApiService.dart';
import 'package:flutter_training_kca/API_and_Parsed/Items.dart';

import 'customList.dart';

class ScreenUserList extends StatefulWidget {
  const ScreenUserList({Key? key}) : super(key: key);

  @override
  _ScreenUserListState createState() => _ScreenUserListState();
}

class _ScreenUserListState extends State<ScreenUserList> {
  ApiService client1 = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Trang chủ",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Items>>(
        future: client1.getItems(),
        builder: (context, AsyncSnapshot<List<Items>> snapshot) {
          if (snapshot.hasData) {
            List<Items>? items = snapshot.data;
            return ListView.builder(
              itemCount: items!.length,
              itemBuilder: (context, int index) => customlist(items[index]),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
