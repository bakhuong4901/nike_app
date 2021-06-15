import 'package:flutter/material.dart';

class SilverAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver AppBar'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            backgroundColor: Colors.pink,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Ối dồi ôi! ",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                ),
              ),
              background: Container(
                color: Colors.deepOrange,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  height: 50.0,
                  alignment: Alignment.center,
                  color: Colors.purple[100 * (index % 9)],
                  child: Text('purple $index'),
                );
              },
              childCount: 9,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.greenAccent[100 * (index % 9)],
                    child: Text('Grib item $index'),
                  );
                },
                childCount: 15,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2,


            ),),
        ],
      ),
    );
  }
}
