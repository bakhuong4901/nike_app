import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Nike/Screens/register_screen.dart';

import '../product_list_shoes.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'Images/WALLPAPERS_004.png',
                fit: BoxFit.fitHeight,
              ),
              title: Text(
                'NEYMAR JR',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.share,
                  color: Colors.black,
                ),
              ),
            ],
            expandedHeight: 200,
            backgroundColor: Colors.orange,
          ),
          buildShoes(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(bottom: 50),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            child: Text(
              'Register ',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white))),
          ),
        ),
      ),
    );
  }

  Widget buildShoes() => SliverToBoxAdapter(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 0.625,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: shoesDetails[index],
          ),
        ),
      );
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 800,
          width: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            image: DecorationImage(
                image: AssetImage(product.image), fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
