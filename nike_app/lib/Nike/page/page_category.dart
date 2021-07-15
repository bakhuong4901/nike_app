import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCategory extends StatefulWidget {
  const PageCategory({Key? key}) : super(key: key);

  @override
  _PageCategoryState createState() => _PageCategoryState();
}

class _PageCategoryState extends State<PageCategory> {
  final List<String> members = [
    "Member Access Shop All",
    "Member Days Calendar",
    "Members-Only Sale",
    "Upcoming and Just Dropped",
    "Member's Spotlight Challenge",
    "Nike Membership Benefits",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          'Shop',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              )),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/mai.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: Text(
                    'Member Days',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
