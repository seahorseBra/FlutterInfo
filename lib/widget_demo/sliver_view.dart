import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_go/common/item.dart';

class ScrollViewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScrollState();
  }
}

class ScrollState extends State {
  List<WidgetItemData> widgets = [];

  @override
  void initState() {
    super.initState();
    widgets
      ..add(WidgetItemData("ListView", Icons.cached, "list_view"))
      ..add(WidgetItemData("Sliver", Icons.radio_button_checked, "sliver"))
      ..add(
          WidgetItemData("SliverAppBar", Icons.line_weight, "sliver_app_bar"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("ScrollView"),
        ),
        body: WidgetGrid(
          widgets: widgets,
        ));
  }
}
