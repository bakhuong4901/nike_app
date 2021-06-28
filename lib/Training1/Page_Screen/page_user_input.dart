import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Component/clicked_button.dart';
import 'package:flutter_training_kca/Training1/Component/custom_text_field.dart';
import 'package:flutter_training_kca/Training1/Logic/Ancestorlogic.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';


class PageInputUser extends StatelessWidget {
  const PageInputUser({
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
            "Tạo tài khoản",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
              controller: screenLogic.userNameInputController,
              hint: "Username"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
              controller: screenLogic.firstNameInputController, hint: "Họ"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
              controller: screenLogic.lastNameInputController, hint: "Tên"),
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
                bool isValidate = screenLogic.userInformationConfirmed();
                if (!isValidate) {
                  showDialog(
                      context: context,
                      builder: (BuildContext diaLogContext) {
                        // Separate context named
                        return AlertDialog(
                          content: Text("Please fill all information"),
                        );
                      });
                } else {
                  screenLogic.pageController.jumpToPage(1);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
