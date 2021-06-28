import 'package:flutter/material.dart';
import 'package:flutter_training_kca/Training1/Page_Screen/page_confirm.dart';
import 'package:flutter_training_kca/Training1/Page_Screen/page_input_account.dart';
import 'package:flutter_training_kca/Training1/Page_Screen/page_select_tournament.dart';
import 'package:flutter_training_kca/Training1/Page_Screen/page_team_selection.dart';
import 'package:flutter_training_kca/Training1/Page_Screen/page_user_input.dart';

import 'Ancestorlogic.dart';
import 'logic.dart';

class InheritedKycScreen extends StatefulWidget {
  const InheritedKycScreen({Key? key}) : super(key: key);

  @override
  _InheritedKycScreenState createState() => _InheritedKycScreenState();
}

class _InheritedKycScreenState extends State<InheritedKycScreen> {
  KycLogic kycLogic = KycLogic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AncestorKycLogic(kycLogic: kycLogic, child: KycScreen()),
    );
  }
}

class KycScreen extends StatefulWidget {
  const KycScreen({Key? key}) : super(key: key);

  @override
  _KycScreenState createState() => _KycScreenState();
}

class _KycScreenState extends State<KycScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    KycLogic? screenLogic = AncestorKycLogic.of(context)!.kycLogic;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () {
                        if (screenLogic.pageController.page == 0) {
                          Navigator.pop(context);
                        } else {
                          screenLogic.pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.bounceIn);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: PageView(
                  controller: screenLogic.pageController,
                  children: [
                    PageInputUser(context: context),
                    PageInputAccount(context: context),
                    PageTournamentSelection(context: context),
                    PageTeamSelection(context: context),
                    PageConfirm(context: context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




