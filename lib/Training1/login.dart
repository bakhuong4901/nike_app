import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Account.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _titleScreen(),
              _emailButton(),
              _orText(),
              _appleButton(),
              _faceButton(),
              _loginText(),
              _policyText(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _titleScreen() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 80),
      child: Text(
        'Welcome',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding _emailButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          child: Text(
            'Đăng ký với Email',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountScreen()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
      ),
    );
  }

  Padding _orText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Text(
        'Or',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

  Padding _appleButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          child: Text(
            'Đăng ký với Apple',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
      ),
    );
  }

  Padding _faceButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          child: Text(
            'Đăng ký với Apple',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
      ),
    );
  }

  Padding _loginText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Center(
        child: GestureDetector(
          child: Text(
            'Sign In',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
        ),
      ),
    );
  }

  Padding _policyText() {
    return Padding(
      padding: EdgeInsets.zero,
      child: Text(
        "Bằng cách đồng ý, bạn đã đồng ý với Footy's\n Điều khoản dịch vụ và tài chính quyền riêng tư.",
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }
}
