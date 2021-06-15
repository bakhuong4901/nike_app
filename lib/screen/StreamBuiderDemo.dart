import 'package:flutter/material.dart';

class StreamBuilderDemo extends StatefulWidget {
  @override
  State<StreamBuilderDemo> createState() {
    return StreamBuilderDemoState();
  }
}

class StreamBuilderDemoState extends State<StreamBuilderDemo> {
  var countStream = Stream<double>.periodic(
      Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);
  bool isButtonClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),

      ),
      body: SingleChildScrollView(
        child: Center(
          child: StreamBuilder(
            stream: isButtonClick ? countStream : null,
            builder: (context,   AsyncSnapshot<double> snapshot
                ) {
              if (!snapshot.hasData) {
                return Container(
                  margin: EdgeInsets.all(12),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(24),
                    color: Colors.brown,
                    height: snapshot.data,
                    width: snapshot.data,
                  ),
                  Container(
                    margin: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(6),
                          child: Text(
                            'Height:${snapshot.data}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6),
                          child: Text(
                            'Width:${snapshot.data}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
          onPressed: isButtonClick == false
              ? () {
                  setState(() {
                    isButtonClick == false
                        ? isButtonClick = true
                        : isButtonClick = false;
                  });
                }
              : null,
          icon: Icon(
            Icons.accessible_forward,
            color: Colors.black,
          ),
          label: Text(
            'Start StreamBuilder',
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
