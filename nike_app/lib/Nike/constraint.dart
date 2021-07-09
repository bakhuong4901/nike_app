import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logic {
  TextEditingController emailAddressInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  TextEditingController firstNameInput = TextEditingController();
  TextEditingController lastNameInput = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  TextEditingController unitedKingdomInput = TextEditingController();
  String errorAccountConfirmedText = "";

  late UserModel user;

  bool userInformationConfirmed() {
    String emailAddress = emailAddressInput.text;
    String password = passwordInput.text;
    String firstName = firstNameInput.text;
    String lastName = lastNameInput.text;
    String date = dateInput.text;
    String unitKingdom = unitedKingdomInput.text;
    if (emailAddress.isEmpty ||
        firstName.isEmpty ||
        lastName.isEmpty ||
        password.isNotEmpty ||
        date.isNotEmpty ||
        unitKingdom.isNotEmpty) {
      return false;
    }
    user = UserModel.origin(firstName, lastName, date, unitKingdom);
    return true;
  }

  String accountInformationConfirmed() {
    String emailAddress = emailAddressInput.text;
    String password = passwordInput.text;
    String firstName = firstNameInput.text;
    String lastName = lastNameInput.text;
    String date = dateInput.text;
    String unitKingdom = unitedKingdomInput.text;
    errorAccountConfirmedText = "";
    if (emailAddress.isEmpty ||
        firstName.isEmpty ||
        lastName.isEmpty ||
        password.isEmpty ||
        date.isEmpty ||
        unitKingdom.isEmpty) {
      errorAccountConfirmedText = "Please fill all information";
    }
    user.emailAddress = emailAddress;
    user.password = password;
    user.firstName = firstName;
    user.lastName = lastName;
    user.date = date;
    user.unitedKingdom = unitKingdom;
    return errorAccountConfirmedText;
  }
}

class UserModel {
  String? emailAddress;
  String? password;
  String? firstName;
  String? lastName;
  String? date;
  String? unitedKingdom;

  UserModel(
      {this.emailAddress,
      this.password,
      this.firstName,
      this.lastName,
      this.date,
      this.unitedKingdom});

  UserModel.account(this.emailAddress, this.password);

  UserModel.origin(
      this.firstName, this.lastName, this.date, this.unitedKingdom);
}

class SharePref {
  static final String account = "Account";
  static final String password = "Password";

  Future<bool> putString(String key, String value) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.setString(key, value);
  }

  Future<String> _getString(String key) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return Future.value(instance.getString(key) ?? "");
  }

  Future<bool> isLogin() async {
    String accountValue = await _getString(account);
    String passwordValue = await _getString(password);
    print('accountValue $accountValue $passwordValue');

    return accountValue.isNotEmpty && passwordValue.isNotEmpty;
  }
}
final RegExp emailValidatorRegExp =RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9.]+\.[a-zA-]");
const String EmailNullError = " Please Enter your Email";
const String InvalidEmailError = " Please Enter Valid Email";
const String PasswordNullError = " Please Enter your Password";
const String informationError = " Please Enter your Information";
