import 'package:flutter/widgets.dart';
import 'package:flutter_training_kca/Learn/miichisoft.dart';
import 'package:flutter_training_kca/screen/AlterDialogDemo.dart';
import 'package:flutter_training_kca/screen/AnimatedContainerDemo.dart';
import 'package:flutter_training_kca/screen/AnimatedOpacityDemo.dart';
import 'package:flutter_training_kca/screen/ColorFilterDemo.dart';
import 'package:flutter_training_kca/screen/ContainerDemo.dart';
import 'package:flutter_training_kca/screen/CupertinoActionSheetDemo.dart';
import 'package:flutter_training_kca/screen/DataTableDemo.dart';
import 'package:flutter_training_kca/screen/DragableScrollableSheetDemo.dart';
import 'package:flutter_training_kca/screen/ExpandedDemo.dart';
import 'package:flutter_training_kca/screen/FadeTransitionDemo.dart';
import 'package:flutter_training_kca/screen/FloatingActionButtonDemo.dart';
import 'package:flutter_training_kca/screen/FractionallySizedBoxDemo.dart';
import 'package:flutter_training_kca/screen/FutureBuilderDemo.dart';
import 'package:flutter_training_kca/screen/ListTileDemo.dart';
import 'package:flutter_training_kca/screen/ListViewDemo.dart';
import 'package:flutter_training_kca/screen/OpacityDemo.dart';
import 'package:flutter_training_kca/screen/PageViewDemo.dart';
import 'package:flutter_training_kca/screen/SafeAreaDemo.dart';
import 'package:flutter_training_kca/screen/SelectedTableTextDemo.dart';
import 'package:flutter_training_kca/screen/SliderDemo.dart';
import 'package:flutter_training_kca/screen/SliverAppBarDemo.dart';
import 'package:flutter_training_kca/screen/ToggleButtonDemo.dart';
import 'package:flutter_training_kca/screen/WrapDemo.dart';

class CatalogModel {
  final String widgetName;
  final Widget destinationScreen;

  const CatalogModel(
      {required this.widgetName, required this.destinationScreen});

  static List<CatalogModel> toList() {
    return [
      // CatalogModel(widgetName: 'Safe Area', destinationScreen: SafeAreaDemo()),
      // CatalogModel(widgetName: 'Expanded', destinationScreen: ExpandedDemo()),
      // CatalogModel(widgetName: 'AnimatedContainer', destinationScreen: AnimatedContainerDemo()),
      // CatalogModel(widgetName: 'Wrap', destinationScreen: WrapDemo()),
      // CatalogModel(widgetName: 'Opacity', destinationScreen: OpacityDemo()),
      // CatalogModel(widgetName: 'FutureBuilder', destinationScreen: FutureBuilderDemo()),
      // CatalogModel(widgetName: 'Fade Transition', destinationScreen: FadeTransitionDemo()),
      // CatalogModel(widgetName: 'Floating Action Button', destinationScreen: FloatActionButtonDemo()),
      // CatalogModel(widgetName: 'Page View', destinationScreen: PageViewDemo()),
      // CatalogModel(widgetName: 'Wrap', destinationScreen: WrapDemo()),
      //22/6
      // CatalogModel(widgetName: 'AnimatedOpacity', destinationScreen: AnimatedOpacityDemo()),
      // CatalogModel(widgetName: 'FractionallySizedBox', destinationScreen: FractionallySizedBoxDemo()),
      // CatalogModel(widgetName: 'ListView', destinationScreen: ListViewDemo()),
      // CatalogModel(widgetName: 'ListTile', destinationScreen: ListTileDemo()),
      // CatalogModel(widgetName: 'Container', destinationScreen: ContainerDemo()),
      // CatalogModel(widgetName: 'SelectedTableText', destinationScreen: SelectedTableTextDemo()),
      // CatalogModel(widgetName: 'DataTable', destinationScreen: DataTableDemo()),
      // CatalogModel(widgetName: 'Slider', destinationScreen: SliderDemo()),
      // // CatalogModel(widgetName: 'AlterDialog', destinationScreen: AlterDialogDemo()),
      // // CatalogModel(widgetName: 'DragableScrollsheet', destinationScreen: DragableScrollableSheetDemo()),
      // CatalogModel(widgetName: 'ColorFiltered', destinationScreen: ColorFilterDemo()),
      // CatalogModel(widgetName: 'ToggleButton', destinationScreen: ToggleButtonDemo()),
      // CatalogModel(widgetName: 'CupertinoActionSheet', destinationScreen: CupertinoActionSheetDemo()),
      CatalogModel(
          widgetName: 'michisoft', destinationScreen: MiiChiSoftDemo()),
      CatalogModel(
          widgetName: 'SliverAppbar', destinationScreen: SilverAppDemo()),
    ];
  }
}
