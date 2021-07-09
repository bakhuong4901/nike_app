import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login_screen.dart';
import '../constraint.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  final List<String> cities = <String>[
    " United Kingdom",
    " Vietnamese",
    " NewYork"
  ];
  bool clickSignUp = false;

  String itemChosen = " United Kingdom";
  late String emailAddress;
  late String passWord;
  late String firstName;
  late String lastName;
  late String date;

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    logo(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "BECOME A NIKE MEMBER",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Create your Nike Member profile and get first \naccess to the very best of Nike products, \ninspiration and community.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      onSaved: (newValue) => emailAddress = newValue!,
                      validator: (value) {
                        if (value!.isEmpty) {
                          addError(error: EmailNullError);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          removeError(error: EmailNullError);
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Email address",
                        hintText: "Enter your Email",
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (newValue) => passWord = newValue!,
                      validator: (value) {
                        if (value!.isEmpty) {
                          addError(error: PasswordNullError);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          removeError(error: PasswordNullError);
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (newValue) => firstName = newValue!,
                      validator: (value) {
                        if (value!.isEmpty) {
                          addError(error: informationError);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          removeError(error: informationError);
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "First Name",
                        hintText: "Enter your Fist Name",
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (newValue) => lastName = newValue!,
                      validator: (value) {
                        if (value!.isEmpty) {
                          addError(error: informationError);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          removeError(error: informationError);
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        hintText: "Enter your Last Name",
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onSaved: (newValue) => date = newValue!,
                      validator: (value) {
                        if (value!.isEmpty) {
                          addError(error: informationError);
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          removeError(error: informationError);
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Date of Birth",
                        hintText: "Enter your Date",
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Get a Nike Member Reward every year on your Birthday.',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: DropdownButton(
                        hint: Text('Selected City'),
                        value: itemChosen,
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 32,
                        underline: SizedBox(),
                        isExpanded: true,
                        onChanged: (newValue) {
                          setState(() {
                            itemChosen = newValue.toString();
                          });
                        },
                        items: cities.map(
                          (valueItems) {
                            return DropdownMenuItem(
                              child: Text(
                                valueItems,
                              ),
                              value: valueItems,
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: clickSignUp,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              clickSignUp = value!;
                            });
                          },
                        ),
                        Text(
                          'Sign up for emails to get updates from Nike on products, offers \nand your Member benefits',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    policy(),
                    SizedBox(
                      height: 5,
                    ),
                    FormErrors(errors: errors),
                    SizedBox(
                      height: 20,
                    ),
                    buttonJoin(),
                    SizedBox(
                      height: 20,
                    ),
                    textSign(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding logo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Image.asset(
        'Images/732084.png',
        height: 50,
        width: 50,
      ),
    );
  }

  RichText policy() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "By creating an account, you agree to Nike's ",
          style: TextStyle(color: Colors.black54),
          children: [
            TextSpan(
              text: 'Privacy Policy ',
              style: TextStyle(
                  color: Colors.black54, decoration: TextDecoration.underline),
            ),
            TextSpan(text: '\nand ', style: TextStyle(color: Colors.black54)),
            TextSpan(
                text: 'Terms of Use',
                style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.underline)),
          ]),
    );
  }

  Container buttonJoin() {
    return Container(
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            });
          },
          child: Text(
            'JOIN US',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ),
    );
  }

  Container textSign() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already a Member?',
            style: TextStyle(color: Colors.black54),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}

class FormErrors extends StatelessWidget {
  const FormErrors({Key? key, required this.errors}) : super(key: key);
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorTExt(error: errors[index])),
    );
  }

  Row formErrorTExt({required String error}) {
    return Row(
      children: [
        Image.asset(
          'Images/732084.png',
          height: 18,
          width: 18,
        ),
        SizedBox(
          width: 10,
        ),
        Text(error),
      ],
    );
  }
}
