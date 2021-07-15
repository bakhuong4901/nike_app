import 'dart:ui';

import 'package:flutter/material.dart';

import '../product_list_shoes.dart';

class ChosenSizeScreen extends StatefulWidget {
  const ChosenSizeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChosenSizeScreenState createState() => _ChosenSizeScreenState();
}

class _ChosenSizeScreenState extends State<ChosenSizeScreen>
    with TickerProviderStateMixin {
  dynamic _selectedIndex;

  bool isSize = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ))
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Save Your Shoe Size',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This will help us reserve shoes for you and \nexpedite your checkout process.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: sizeShoes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 4,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSize = !isSize;
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: isSize
                                  ? (_selectedIndex == index
                                      ? Colors.white
                                      : Colors.black)
                                  : Colors.black,
                              shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              sizeShoes[index],
                              style: TextStyle(
                                  color: isSize
                                      ? (_selectedIndex == index
                                          ? Colors.black
                                          : Colors.white)
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50),
        child: Visibility(
          visible: true,
          child: SizedBox(
            width: 150,
            height: 60,
            child: ElevatedButton(
              child: Text(
                'Next ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
