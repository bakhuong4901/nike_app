import 'package:flutter/cupertino.dart';

class KycLogic {
  TextEditingController userNameInputController = TextEditingController();
  TextEditingController firstNameInputController = TextEditingController();
  TextEditingController lastNameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController secondPasswordInputController = TextEditingController();
  String errorAccountConfirmedText = "";
  PageController pageController = PageController();
  List<SelectObjectModel> _listTournamentObject = [
    SelectObjectModel(
      title: "Premier League",
      imageUrl:
          "https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2016/08/premier_league_rebrands_designstudio_01.jpg",
    ),
    SelectObjectModel(
      title: "Laliga",
      imageUrl:
          "https://iscreativestudio.com/wp-content/uploads/2016/08/logotipos4.jpg",
    ),
    SelectObjectModel(
      title: "BundesLiga",
      imageUrl:
          "https://i.pinimg.com/originals/6b/a3/18/6ba318474e4cab7cef32a965fd6b982c.png",
    ),
    SelectObjectModel(
      title: "Ligue 1",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Ligue_1_Uber_Eats.svg/1200px-Ligue_1_Uber_Eats.svg.png",
    ),
    SelectObjectModel(
      title: "Serie A",
      imageUrl:
          "https://static.wikia.nocookie.net/logopedia/images/0/02/Serie_A_logo_%282018%29.png/revision/latest?cb=20180729083244",
    )
  ];
  List<SelectObjectModel> _listTeam = [
    SelectObjectModel(
      title: "Manchester United",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1024px-Manchester_United_FC_crest.svg.png",
    ),
    SelectObjectModel(
      title: "Manchester City",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/1/1d/Manchester_City_FC_logo.svg/1200px-Manchester_City_FC_logo.svg.png",
    ),
    SelectObjectModel(
      title: "Chelsea",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/5/5c/Chelsea_crest.svg/1024px-Chelsea_crest.svg.png",
    ),
    SelectObjectModel(
      title: "Arsenal",
      imageUrl:
          "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png",
    ),
    SelectObjectModel(
      title: "Liverpool",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/vi/thumb/0/0c/Liverpool_FC.svg/1200px-Liverpool_FC.svg.png",
    ),
  ];
  late UserModel user;

  bool userInformationConfirmed() {
    String username = userNameInputController.text;
    String firstName = firstNameInputController.text;
    String lastName = lastNameInputController.text;
    if (username.isEmpty || firstName.isEmpty || lastName.isEmpty) {
      return false;
    }
    user = UserModel.origin(username, firstName, lastName);
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

  void selectTournament(SelectObjectModel tournamentModel) {
    user.chosenTournament = tournamentModel;
  }

  void selectTeam(SelectObjectModel teamModel) {
    user.chosenTeam = teamModel;
  }

  List<SelectObjectModel> getListTournament() => _listTournamentObject;

  List<SelectObjectModel> getListTeam() => _listTeam;
}

class SelectObjectModel {
  SelectObjectModel({
    required this.title,
    required this.imageUrl,
  });

  String title;
  String imageUrl;
}

class UserModel {
  String? userName;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  SelectObjectModel? chosenTeam;
  SelectObjectModel? chosenTournament;

  UserModel(
      {this.userName,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.chosenTeam,
      this.chosenTournament});

  UserModel.origin(this.userName, this.firstName, this.lastName);

  UserModel.account(this.email, this.password);
}

class TeamModel {
  String imgUrl;
  String name;

  TeamModel({required this.imgUrl, required this.name});
}

class TournamentModel {
  String imgUrl;
  String name;

  TournamentModel({required this.imgUrl, required this.name});
}
