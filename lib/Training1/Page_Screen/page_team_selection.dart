import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Component/select_card.dart';
import 'package:flutter_training_kca/Training1/Logic/Ancestorlogic.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';

class PageTeamSelection extends StatelessWidget {
  const PageTeamSelection({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    KycLogic screenLogic = AncestorKycLogic.of(context)!.kycLogic;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chọn đội yêu thích",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: screenLogic.getListTeam().length,
                itemBuilder: (BuildContext context, int index) {
                  SelectObjectModel selectedObject = screenLogic.getListTeam()[index];
                  return GestureDetector(
                    onTap: () {
                      screenLogic.selectTeam(selectedObject);
                      screenLogic.pageController.jumpToPage(4);
                    },
                    child: SelectCard(object: selectedObject),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
