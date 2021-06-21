import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 150, 20),
              child: Text(
                'Tạo tài khoản',
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Tên người dùng",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Họ",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Ten",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    'Tiep theo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
