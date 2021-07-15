import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Nike/product_list_shoes.dart';

class ShirtScreen extends StatefulWidget {
  const ShirtScreen({Key? key}) : super(key: key);

  @override
  _ShirtScreenState createState() => _ShirtScreenState();
}

class _ShirtScreenState extends State<ShirtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Member Access Shop All',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              )),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          buildShirt(),
        ],
      ),
    );
  }

  Widget buildShirt() => Expanded(
        child: GridView.builder(
          itemCount: productShirt.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.69,
              mainAxisSpacing: 50,
              crossAxisSpacing: 5),
          itemBuilder: (context, index) => ItemCard(
            productShirt: productShirt[index],
          ),
        ),
      );
}

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.productShirt}) : super(key: key);
  final Product productShirt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(productShirt.image), fit: BoxFit.fitWidth),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                ),
              ),
            ],
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
                productShirt.title,
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                productShirt.name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(productShirt.subtitle,
                  style: TextStyle(color: Colors.black54)),
              SizedBox(
                height: 10,
              ),
              Text('\$${productShirt.price}',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
