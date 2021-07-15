import 'package:flutter/material.dart';
import 'package:nike_app/Nike/choosen_size_gen/choosengentle_screen.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            Text(
              'Hi sarah \nWelcome to Nike \n Thank for becoming a Member!',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Let's personalised a few things to \nmake sure you're always getting \nthe best experience.",
              style: TextStyle(color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  child: Text(
                    'Get Started ',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChosenGenScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
