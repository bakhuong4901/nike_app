import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Nike/Screens/experiences_screen.dart';

class ChosenCityScreen extends StatefulWidget {
  const ChosenCityScreen({Key? key}) : super(key: key);

  @override
  _ChosenCityScreenState createState() => _ChosenCityScreenState();
}

class _ChosenCityScreenState extends State<ChosenCityScreen> {
  final List<String> cities = [
    "Berlin",
    "Paris",
    "Los Angeles",
    "Beijing",
    "Barcelona",
    "Shanghai",
    "London",
    "New York",
    "Tokyo",
    "Guangzhou",
    "Vietnamese"
  ];

  void _sendDataToSecondScreen(BuildContext context,int index) {
    String textToSend = cities[index];
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExperienceScreen(
            textCities: textToSend,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        title: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Search for a City'),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Dismiss',
                style: TextStyle(color: Colors.black54),
              )),
          SizedBox(
            width: 20,
          )
        ],
        elevation: 1,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView.builder(
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    _sendDataToSecondScreen(context,index);
                  },
                  leading: Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.black,
                  ),
                  title: Text(cities[index]),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            );
          },
          itemCount: cities.length,
        ),
      ),
    );
  }
}
