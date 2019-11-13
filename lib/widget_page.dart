import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_go/common/item.dart';

class WidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WidgetsState();
  }
}

class WidgetsState extends State with AutomaticKeepAliveClientMixin {
  List<WidgetItemData> widgets = [];

  @override
  void initState() {
    super.initState();
    widgets
      ..add(WidgetItemData("PullToRefresh", Icons.cached, "pull_to_refresh"))
      ..add(WidgetItemData("Radio", Icons.radio_button_checked, "radio"))
      ..add(WidgetItemData("ScrollView", Icons.line_weight, "scroll_view"))
      ..add(WidgetItemData("Button", Icons.call_to_action, "button"))
    ;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new WidgetGrid(
      widgets: widgets,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
