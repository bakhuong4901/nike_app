import 'package:flutter/material.dart';

class InheritedDemo extends StatefulWidget {
  @override
  State<InheritedDemo> createState() {
    return InheritedDemoState();
  }
}

class InheritedDemoState extends State<InheritedDemo> {
  Color _colorOne = Colors.brown;
  Color _colorTwo = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Model'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: <Widget>[
            Container(
              child: AncestorWidget(
                  _colorOne,
                  _colorTwo,
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DependentWidgetOne(),
                        DependentWidgetTwo()
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      textColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).backgroundColor,
                      onPressed: () => setState(() {
                        _colorOne = Colors.amber;
                      }),
                      child: Text('RESET Child 1'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      textColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).backgroundColor,
                      onPressed: () => setState(() {
                        _colorTwo = Colors.blue;
                      }),
                      child: Text('RESET Child 2'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AncestorWidget extends InheritedModel<String> {
  const AncestorWidget(this.colorOne, this.colorTwo, Widget child)
      : super(child: child);
  final Color colorOne;
  final Color colorTwo;

  static AncestorWidget? of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<AncestorWidget>(context, aspect: aspect);
  }

  @override
  bool updateShouldNotifyDependent(
      AncestorWidget oldWidget, Set<String> aspects) {
    if (aspects.contains('one') && colorOne != oldWidget.colorOne) {
      print("Only widget one is rebuild");
      return true;
    }
    if (aspects.contains('two') && colorTwo != oldWidget.colorTwo) {
      print("Only widget two is rebuild");
      return true;
    }
    return false;
  }

  @override
  bool updateShouldNotify(AncestorWidget oldWidget) {
    print("First updateShouldNotify is checked");
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }
}

class DependentWidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor = AncestorWidget.of(context, 'one');
    return Container(
      color: ancestor!.colorOne,
      height: 150,
      width: 200,
      child: Center(
        child: Text(
          "Dependent Child 1",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DependentWidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor = AncestorWidget.of(context, 'two');
    return Container(
      color: ancestor!.colorTwo,
      height: 150,
      width: 400,
      child: Center(
        child: Text(
          "Dependent Child 2",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
