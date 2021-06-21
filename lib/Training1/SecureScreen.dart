import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Account.dart';
import 'package:flutter_training_kca/Training1/login.dart';

class SecureScreen extends StatefulWidget {
  const SecureScreen({Key? key}) : super(key: key);

  @override
  _SecureScreenState createState() => _SecureScreenState();
}

class _SecureScreenState extends State<SecureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 100, 130, 10),
              child: Text(
                'Nâng cao bảo mật',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 15),
                decoration: InputDecoration(
                  labelText: "Email",
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
                  labelText: "Nhập password",
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
                  labelText: "Nhập lại password",
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountScreen()));
                  },
                  child: Text(
                    'Đăng ký',
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
