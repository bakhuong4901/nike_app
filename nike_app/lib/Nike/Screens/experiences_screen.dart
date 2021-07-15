import 'package:flutter/material.dart';
import 'package:nike_app/Nike/Screens/details.sreen.dart';

import '../product_list_shoes.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key, required this.textCities})
      : super(key: key);
  final String textCities;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.black,
              )),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              'Nike Experiences',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: textCities,
                  hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "IN YOUR CITY"),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'In-person experiences are limited in your city.Join us for one online.',
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 40),
            buildShoes(),
          ],
        ),
      ),
    );
  }

  Widget buildShoes() => Expanded(
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: products[index],
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(image: AssetImage(product.image)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.title,
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(product.subtitle,
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$${product.price}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
