import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomAppBarMaterial extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangeTab;

  const BottomAppBarMaterial({
    Key? key,
    required this.index,
    required this.onChangeTab,
  }) : super(key: key);

  @override
  _BottomAppBarMaterialState createState() => _BottomAppBarMaterialState();
}

class _BottomAppBarMaterialState extends State<BottomAppBarMaterial> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            index: 0,
            icon: Icon(CupertinoIcons.home),
          ),
          buildTabItem(
            index: 1,
            icon: Icon(CupertinoIcons.search),
          ),
          buildTabItem(
            index: 2,
            icon: Icon(Icons.favorite_border),
          ),
          buildTabItem(
            index: 3,
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          buildTabItem(
            index: 4,
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }

  Widget buildTabItem({required int index, required Icon icon}) {
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.black : Colors.black26,
      ),
      child: IconButton(onPressed: () => widget.onChangeTab(index), icon: icon),
    );
  }
}
