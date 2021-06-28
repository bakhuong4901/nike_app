import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Component/select_card.dart';
import 'package:flutter_training_kca/Training1/Logic/Ancestorlogic.dart';
import 'package:flutter_training_kca/Training1/Logic/logic.dart';


class PageTournamentSelection extends StatelessWidget {
  const PageTournamentSelection({
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
            "Chọn giải đấu",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: screenLogic.getListTournament().length,
                itemBuilder: (BuildContext context, int index) {
                  SelectObjectModel selectedObject = screenLogic.getListTournament()[index];
                  return GestureDetector(
                    onTap: () {
                      screenLogic.selectTournament(
                          selectedObject);
                      screenLogic.pageController.jumpToPage(3);
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
