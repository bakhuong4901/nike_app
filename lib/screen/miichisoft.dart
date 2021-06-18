import 'package:flutter/material.dart';

class MiiChiSoftDemo extends StatefulWidget {
  @override
  _MiiChiSoftDemoState createState() => _MiiChiSoftDemoState();
}

class _MiiChiSoftDemoState extends State<MiiChiSoftDemo> {
  bool _obscureText = true;

  void _password() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Text(
                'MiiChiSoft',
                style: TextStyle(fontSize: 32, color: Colors.green),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Account",
                  prefixIcon: Container(
                    width: 50,
                    child: Icon(Icons.account_circle_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  TextField(
                    obscureText: _obscureText,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Container(
                        width: 50,
                        child: Icon(Icons.lock_outline),
                      ),
                      suffixIcon: Container(
                        width: 50,
                        child: IconButton(
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: _password,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ),
                  // Icon
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
