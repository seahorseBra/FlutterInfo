import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_go/widget_demo/button.dart';
import 'package:flutter_go/widget_demo/pullToRefresh.dart';
import 'package:flutter_go/widget_demo/radio.dart';
import 'package:flutter_go/widget_demo/scroll/ListView.dart';
import 'package:flutter_go/widget_demo/scroll/sliver_appbar.dart';
import 'package:flutter_go/widget_demo/scroll/sliver.dart';
import 'package:flutter_go/widget_demo/sliver_view.dart';

var widgetDetailHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
    String id = parameters["id"][0];
    if (id == "pull_to_refresh") {
      return PullToRefreshApp();
    }
    if (id == "radio") {
      return RadioApp();
    }
    if (id == "scroll_view") {
      return ScrollViewApp();
    }
    if (id == "list_view") {
      return ListApp();
    }
    if (id == "sliver") {
      return SliverApp();
    }
    if (id == "sliver_app_bar") {
      return SliverAppBarApp();
    }
    if (id == "button") {
      return ButtonApp();
    }
    return null;
  },
);
