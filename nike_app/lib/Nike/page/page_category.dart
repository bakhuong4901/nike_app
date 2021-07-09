import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageCategory extends StatefulWidget {
  const PageCategory({Key? key}) : super(key: key);

  @override
  _PageCategoryState createState() => _PageCategoryState();
}

class _PageCategoryState extends State<PageCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
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
