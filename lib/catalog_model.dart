import 'package:flutter/widgets.dart';
import 'package:flutter_training_kca/screen/AnimatedContainerDemo.dart';
import 'package:flutter_training_kca/screen/ExpandedDemo.dart';
import 'package:flutter_training_kca/screen/FadeTransitionDemo.dart';
import 'package:flutter_training_kca/screen/FloatingActionButtonDemo.dart';
import 'package:flutter_training_kca/screen/FutureBuilderDemo.dart';
import 'package:flutter_training_kca/screen/OpacityDemo.dart';
import 'package:flutter_training_kca/screen/PageViewDemo.dart';
import 'package:flutter_training_kca/screen/SafeAreaDemo.dart';
import 'package:flutter_training_kca/screen/WrapDemo.dart';

class CatalogModel {
  final String widgetName;
  final Widget destinationScreen;

  const CatalogModel(
      {required this.widgetName, required this.destinationScreen});

  static List<CatalogModel> toList() {
    return [
      CatalogModel(widgetName: 'Safe Area', destinationScreen: SafeAreaDemo()),
      CatalogModel(widgetName: 'Expanded', destinationScreen: ExpandedDemo()),
      CatalogModel(widgetName: 'AnimatedContainer', destinationScreen: AnimatedContainerDemo()),
      CatalogModel(widgetName: 'Wrap', destinationScreen: WrapDemo()),
      CatalogModel(widgetName: 'Opacity', destinationScreen: OpacityDemo()),
      CatalogModel(widgetName: 'FutureBuilder', destinationScreen: FutureBuilderDemo()),
      CatalogModel(widgetName: 'Fade Transition', destinationScreen: FadeTransitionDemo()),
      CatalogModel(widgetName: 'Floating Action Button', destinationScreen: FloatActionButtonDemo()),
      CatalogModel(widgetName: 'Page View', destinationScreen: PageViewDemo()),
      CatalogModel(widgetName: 'Wrap', destinationScreen: WrapDemo()),

    ];
  }
}
