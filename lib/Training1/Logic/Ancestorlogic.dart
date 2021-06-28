import 'package:flutter/material.dart';

import 'logic.dart';


class AncestorKycLogic extends InheritedWidget {
  final KycLogic kycLogic;

  AncestorKycLogic({Key? key, required this.kycLogic, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(AncestorKycLogic oldWidget) {
    return oldWidget.kycLogic != this.kycLogic;
  }

  static AncestorKycLogic? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AncestorKycLogic>();
  }
}
