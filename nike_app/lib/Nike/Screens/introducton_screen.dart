import 'package:flutter/material.dart';
import 'package:nike_app/Nike/Screens/register_screen.dart';
import 'package:nike_app/Nike/Screens/login_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  bool isJoin = true;
  bool isLog = true;

  void changeColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/Le_james.jpeg'), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
              ),
              Image.asset(
                'Images/732084.png',
                height: 80,
                width: 80,
              ),
              Text(
                'Free delivery, members-only products, the best of Nike, personalised for you.',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    child: SizedBox(
                      width: 100,
                      height: 40,
                      child: OutlinedButton(
                        child: Text('Join'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isJoin ? null : Colors.white,
                          primary: isJoin ? Colors.white : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            isJoin = !isJoin;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: SizedBox(
                      width: 100,
                      height: 40,
                      child: OutlinedButton(
                        child: Text(
                          'Log In',
                        ),
                        onPressed: () {
                          setState(() {
                            isLog = !isLog;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isLog ? null : Colors.white,
                          primary: isLog ? Colors.white : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          side: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
