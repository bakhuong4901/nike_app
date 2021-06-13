import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget {
  @override
  State<FutureBuilderDemo> createState() {
    return FutureBuilderDemoState();
  }
}

class FutureBuilderDemoState extends State<FutureBuilderDemo> {
  bool _isButtonClicked = false;
  var _buttonIcon = Icons.cloud_download;
  var _buttonText = "Fetch Data";
  var _buttonColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text('Future Builder'),
          ),
          margin: EdgeInsets.only(right: 48),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text(
                  'Press the button data',
                  textAlign: TextAlign.center,
                );
              case ConnectionState.active:
              case ConnectionState.waiting:
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                );
              case ConnectionState.done:
                if (snapshot.hasError)
                  return Text('Error:\n\n${snapshot.error}');
                return Text(
                  'Data:\n\n${snapshot.data.toString()}',
                  textAlign: TextAlign.center,
                );
            }
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () {
            setState(() {
              _isButtonClicked == false
                  ? _isButtonClicked == true
                  : _isButtonClicked == false;
              if (!_isButtonClicked) {
                _buttonIcon = Icons.cloud_download;
                _buttonColor = Colors.green;
                _buttonText = "Fetch Data";
              } else {
                _buttonIcon = Icons.replay;
                _buttonColor = Colors.deepOrange;
                _buttonText = "Reset";
              }
            });
          },
          icon: Icon(
            _buttonIcon,
            color: Colors.white,
          ),
          label: Text(
            _buttonText,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
