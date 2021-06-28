import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Component/clicked_button.dart';
import 'package:flutter_training_kca/Training1/Component/custom_text_field.dart';
import 'package:flutter_training_kca/Training1/Logic/Ancestorlogic.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';



class PageInputAccount extends StatelessWidget {
  const PageInputAccount({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    KycLogic screenLogic = AncestorKycLogic.of(context)!.kycLogic;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nâng cao bảo mật",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(controller: screenLogic.emailInputController, hint: "Email"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(controller: screenLogic.passwordInputController,hint: "Password"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(controller: screenLogic.secondPasswordInputController,hint: "Nhập lại password"),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ClickedButton(
              title: 'Tiếp theo',
              color: Colors.blue,
              callBack: () {
                screenLogic.accountInformationConfirmed();
                if (screenLogic.errorAccountConfirmedText.isNotEmpty) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text(screenLogic.errorAccountConfirmedText),
                        );
                      });
                } else {
                  screenLogic.pageController.jumpToPage(2);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

