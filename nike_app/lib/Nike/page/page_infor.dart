import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_app/Nike/page/page_inbox.dart';

class PageInfor extends StatefulWidget {
  const PageInfor({Key? key}) : super(key: key);

  @override
  _PageInforState createState() => _PageInforState();
}

class _PageInforState extends State<PageInfor> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 80,
              width: 80,
              decoration:
                  BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.photo_camera_solid,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'SARAH JONAS',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              width: 250,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'EDIT PROFILE',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 10),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.archivebox_fill,
                          color: Colors.black26,
                        ),
                      ),
                      Text('Orders')
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 25,
                    width: 2,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.creditcard_fill,
                            color: Colors.black26,
                          )),
                      Text('Passes')
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 25,
                    width: 2,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.calendar,
                            color: Colors.black26,
                          )),
                      Text('Events')
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 25,
                    width: 2,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.settings_solid,
                            color: Colors.black26,
                          )),
                      Text('Settings')
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 40,
              thickness: 1,
            ),
            Divider(
              height: 30,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'INBOX',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'View messages',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageInbox()));
                    },
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text(
                      'YOUR NIKE MEMBER REWARDS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('3 available'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
