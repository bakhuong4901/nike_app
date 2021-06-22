import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Account.dart';
import 'package:flutter_training_kca/Training1/login.dart';
import 'package:flutter_training_kca/Training1/matchScreen.dart';

class SecureScreen extends StatefulWidget {
  const SecureScreen({Key? key}) : super(key: key);

  @override
  _SecureScreenState createState() => _SecureScreenState();
}

class _SecureScreenState extends State<SecureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            titleText(),
            emailText(),
            passText(),
            passwordText(),
            btregister(),
          ],
        ),
      ),
    );
  }

  Padding titleText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 50, 130, 10),
      child: Text(
        'Nâng cao bảo mật',
        style: TextStyle(color: Colors.black, fontSize: 28),
      ),
    );
  }

  Padding emailText() {
    return Padding(
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
    );
  }

  Padding passText() {
    return Padding(
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
    );
  }

  Padding passwordText() {
    return Padding(
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
    );
  }

  Padding btregister() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => matchScreen()));
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)))),
          child: Text(
            'Đăng ký',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
