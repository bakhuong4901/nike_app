import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Component/select_card.dart';
import 'package:flutter_training_kca/Training1/Logic/Ancestorlogic.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';


class PageConfirm extends StatelessWidget {
  const PageConfirm({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    KycLogic screenLogic = AncestorKycLogic.of(context)!.kycLogic;
    return Container(
      child: Center(
        child: ElevatedButton(
          child: Text(
            "Đăng ký",
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("User information"),
                  content: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Username: ${screenLogic.user.userName}"),
                        Text("First Name: ${screenLogic.user.firstName}"),
                        Text("Last Name: ${screenLogic.user.lastName}"),
                        Text("Email: ${screenLogic.user.email}"),
                        Text("Password: ${screenLogic.user.password}"),
                        Text("Selected Tournament: "),
                        SelectCard(object: screenLogic.user.chosenTournament!),
                        Text("Select Team: "),
                        SelectCard(object: screenLogic.user.chosenTeam!),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
