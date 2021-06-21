import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/SecureScreen.dart';

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
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 80),
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 28, color: Colors.black87),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Đăng ký với Email',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecureScreen()));
                    },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Text(
                'Or',
                style: TextStyle(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Đăng ký với Apple',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    color: Colors.black87,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Đăng ký với Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                    color: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Text('Điều khoản dịch vụ và chính sách quyền riêng tư.'),
            ],
          ),
        ),
      ),
    );
  }
}
