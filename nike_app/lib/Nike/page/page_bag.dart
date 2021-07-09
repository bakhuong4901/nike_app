import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageBag extends StatefulWidget {
  const PageBag({Key? key}) : super(key: key);

  @override
  _PageBagState createState() => _PageBagState();
}

class _PageBagState extends State<PageBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 430),
              child: Text(
                'Bag',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 180, bottom: 20),
              height: 80,
              width: 80,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(color: Colors.black),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.lock,
                ),
              ),
            ),
            Text(
              "Your Bag is empty \nWhen you add products, they'll \nappear here.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 210,
            ),
            Container(
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  child: Text(
                    'Shop Now ',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
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
