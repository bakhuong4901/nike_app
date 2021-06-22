import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/SecureScreen.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            titleAccount(),
            tenngdungAccount(),
            hoAccount(),
            tenAccount(),
            btnext(),
          ],
        ),
      ),
    );
  }

  Padding titleAccount() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 50, 150, 10),
      child: Text(
        'Tạo tài khoản',
        style: TextStyle(color: Colors.black, fontSize: 32),
      ),
    );
  }

  Padding tenngdungAccount() {
    return Padding(
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
    );
  }

  Padding hoAccount() {
    return Padding(
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
    );
  }

  Padding tenAccount() {
    return Padding(
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
    );
  }

  Padding btnext() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecureScreen()));
          },
          child: Text(
            'Tiep theo',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
      ),
    );
  }
}
