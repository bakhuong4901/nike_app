import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFarvority extends StatefulWidget {
  const PageFarvority({Key? key}) : super(key: key);

  @override
  _PageFarvorityState createState() => _PageFarvorityState();
}

class _PageFarvorityState extends State<PageFarvority> {
  bool isClick = false;

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
            Container(
              margin: EdgeInsets.only(left: 20, right: 360),
              child: Text(
                'Favourites',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 5, left: 5),
              child: MergeSemantics(
                child: ListTile(
                  title: Text(
                    'Show products at',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  subtitle: Text('Select a Nike Store'),
                  trailing: CupertinoSwitch(
                    value: isClick,
                    onChanged: (value) {
                      setState(() {
                        isClick = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150, bottom: 20),
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
                  Icons.favorite_border,
                ),
              ),
            ),
            Text(
              'Item added to your Wish List \nwill be saved here.',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 180,
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
