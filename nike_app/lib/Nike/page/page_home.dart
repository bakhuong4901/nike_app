import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'DISCOVER',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Monday, 2 November',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Images/15.jpeg'), fit: BoxFit.fitWidth),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Text(
                      'Bra Talk',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'WHICH SUPPORT TYPE IS FOR ME?',
                      style: TextStyle(
                          fontSize: 52,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                        child: Text(
                          'Find Out',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
