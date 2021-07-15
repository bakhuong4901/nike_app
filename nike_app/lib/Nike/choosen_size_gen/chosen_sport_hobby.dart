import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Nike/product_list_shoes.dart';

class ChosenSportScreen extends StatefulWidget {
  const ChosenSportScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChosenSportScreenState createState() => _ChosenSportScreenState();
}

class _ChosenSportScreenState extends State<ChosenSportScreen> {
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
              'SELECT YOUR INTERESTS',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Selected the sports, brands and \ncollections that interest you the most',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: sports.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.69,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.transparent, BlendMode.color),
                                image: AssetImage(sports[index].image),
                                fit: BoxFit.fitWidth),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.checkmark,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              sports[index].name,
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
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
        margin: EdgeInsets.only(bottom: 10),
        child: Visibility(
          visible: isSize,
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
                  primary: Colors.white,
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

// class ItemCard extends StatelessWidget {
//   const ItemCard({Key? key, required this.sport, required this.isSize})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         GestureDetector(
//           onTap: () {},
//           child: Container(
//             height: 250,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   colorFilter:
//                       ColorFilter.mode(Colors.transparent, BlendMode.color),
//                   image: AssetImage(sport.image),
//                   fit: BoxFit.fitWidth),
//             ),
//             child: Center(
//               child: Icon(
//                 CupertinoIcons.checkmark,
//                 color: Colors.orange,
//               ),
//             ),
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           width: double.infinity,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 sport.name,
//                 style: TextStyle(
//                     color: Colors.orange, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
