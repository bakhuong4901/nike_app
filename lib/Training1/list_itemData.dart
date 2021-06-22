import 'package:flutter/cupertino.dart';
import 'package:flutter_training_kca/Learn/key.dart';
import 'package:flutter_training_kca/Training1/list_itemmodel.dart';
List<ListItem> getListItem() => listItems;
List<ListItem> getListTeam() => listTeam;

final List<ListItem> listItems = [
  ListItem(
      title: "Premier League",
      urlImage:
          "https://iscreativestudio.com/wp-content/uploads/2016/08/logotipos4.jpg"),
  ListItem(
    title: "Laliga",
    urlImage:
        "https://iscreativestudio.com/wp-content/uploads/2016/08/logotipos4.jpg",
  ),
  ListItem(
    title: "BundesLiga",
    urlImage:
        "https://i.pinimg.com/originals/6b/a3/18/6ba318474e4cab7cef32a965fd6b982c.png",
  ),
  ListItem(
    title: "Ligue 1",
    urlImage:
        "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Ligue_1_Uber_Eats.svg/1200px-Ligue_1_Uber_Eats.svg.png",
  ),
  ListItem(
    title: "Serie A",
    urlImage:
        "https://static.wikia.nocookie.net/logopedia/images/0/02/Serie_A_logo_%282018%29.png/revision/latest?cb=20180729083244",
  ),
];
List<ListItem> listTeam = [
  ListItem(
    title: "Manchester United",
    urlImage:
        "https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1024px-Manchester_United_FC_crest.svg.png",
  ),
  ListItem(
    title: "Manchester City",
    urlImage:
        "https://upload.wikimedia.org/wikipedia/vi/thumb/1/1d/Manchester_City_FC_logo.svg/1200px-Manchester_City_FC_logo.svg.png",
  ),
  ListItem(
    title: "Chelsea",
    urlImage:
        "https://upload.wikimedia.org/wikipedia/vi/thumb/5/5c/Chelsea_crest.svg/1024px-Chelsea_crest.svg.png",
  ),
  ListItem(
    title: "Arsenal",
    urlImage:
        "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png",
  ),
  ListItem(
    title: "Liverpool",
    urlImage:
        "https://upload.wikimedia.org/wikipedia/vi/thumb/0/0c/Liverpool_FC.svg/1200px-Liverpool_FC.svg.png",
  ),
];

class KycLogic {
  TextEditingController userNameInputController = TextEditingController();
  TextEditingController firstNameInputController = TextEditingController();
  TextEditingController lastNameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController secondPasswordInputController = TextEditingController();
  String errorAccountConfirmedText = "";
  PageController pageController = PageController();
  late UserModel user;

  bool userInformationConfirmed() {
    String username = userNameInputController.text;
    String firstName = firstNameInputController.text;
    String lastName = lastNameInputController.text;
    if (username.isEmpty || firstName.isEmpty || lastName.isEmpty) {
      return false;
    }
    // user = UserModel.origin(username, firstName, lastName);
    return true;
  }

  String accountInformationConfirmed() {
    String password = passwordInputController.text;
    String confirmedPassword = secondPasswordInputController.text;
    String email = emailInputController.text;
    errorAccountConfirmedText = "";
    if (password.isEmpty || confirmedPassword.isEmpty || email.isEmpty) {
      errorAccountConfirmedText = "Please fill all information";
    } else if (passwordInputController.text !=
        secondPasswordInputController.text) {
      errorAccountConfirmedText = "Please fill correct password";
    }
    user.email = email;
    user.password = password;
    return errorAccountConfirmedText;
  }
}
