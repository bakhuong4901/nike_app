import 'package:flutter/widgets.dart';
import 'package:flutter_training_kca/main.dart';

class CatalogModel {
  final String widgetName;
  final Widget destinationScreen;

  const CatalogModel(
      {required this.widgetName, required this.destinationScreen});

  static List<CatalogModel> toList() {
    return [
      CatalogModel(widgetName: 'SafeArea1', destinationScreen: SafeAreScreen()),
      CatalogModel(widgetName: 'SafeArea2', destinationScreen: SafeAreScreen())
    ];
  }
}
