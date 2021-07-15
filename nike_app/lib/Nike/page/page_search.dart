import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Nike/Screens/chosencity_Screen.dart';

class PageSearch extends StatefulWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  _PageSearchState createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(440, 10, 5, 10),
              child: IconButton(
                icon: Icon(CupertinoIcons.search),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChosenCityScreen()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Shop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Categories(),
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/unnamed.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: Text(
                    'New In and Featured',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Images/mai.jpeg'), fit: BoxFit.fitWidth),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: ExpansionTile(
                  title: Text(
                    'Member Days',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        'Member Access Shop All',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text('Member Day Calendar',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text('Member-Only Sale',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text('Upcoming and Just Dropped',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text('Members Spotlight Challenge',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      title: Text('Nike Membership Benefits',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: 200,
            //   width: 500,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('Images/mai.jpeg'),
            //       fit: BoxFit.fitWidth,
            //     ),
            //   ),
            //   // child: Container(
            //
            //   child: ExpansionTile(
            //     expandedAlignment: Alignment.center,
            //     title: Text(
            //       'Member Day',
            //       style: TextStyle(color: Colors.white, fontSize: 18),
            //     ),
            //     children: [
            //       ListTile(
            //         title: Text(
            //           membersDay.first,
            //           style: TextStyle(color: Colors.white, fontSize: 18),
            //         ),
            //         onTap: () {},
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/jor.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: GestureDetector(
                  child: Text(
                    'Shoes',
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

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Men", "Women", "Boys", "Girls"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontSize: 16,
                  color:
                      selectedIndex == index ? Colors.black : Colors.black26),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.black26,
            ),
          ],
        ),
      ),
    );
  }
}
