import 'package:flutter/material.dart';
import 'package:nike_app/Nike/bottom_appbar.dart';
import 'package:nike_app/Nike/page/page_bag.dart';
import 'package:nike_app/Nike/page/page_farvority.dart';
import 'package:nike_app/Nike/page/page_home.dart';
import 'package:nike_app/Nike/page/page_inbox.dart';
import 'package:nike_app/Nike/page/page_infor.dart';
import 'package:nike_app/Nike/page/page_search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final List<Widget> pages = [
    PageHome(),
    PageSearch(),
    PageFarvority(),
    PageBag(),
    PageInfor(),
    PageInbox(),
  ];

  void onChangeTab(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: pages[index],
      bottomNavigationBar: BottomAppBarMaterial(
        index: index,
        onChangeTab: onChangeTab,
      ),
    );
  }
}
