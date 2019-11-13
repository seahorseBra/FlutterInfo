import 'package:flutter/material.dart';
import 'package:flutter_go/news_page.dart';
import 'package:flutter_go/widget_page.dart';

///主页
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  List<Widget> _pageList = List();
  List<Map> tabs = [
    {"title": "动态", "icon": Icons.assignment},
    {"title": "WIDGET", "icon": Icons.explicit}
  ];

  List<BottomNavigationBarItem> _myTabs = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageList..add(NewsPage())..add(WidgetPage());
    tabs.forEach((value) {
      _myTabs
        ..add(new BottomNavigationBarItem(
          icon: new Icon(value["icon"]),
          title: new Text(value["title"]),
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: renderAppBar(context, _currentIndex),
      body: new IndexedStack(
        index: _currentIndex,
        children: _pageList,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _myTabs,
        onTap: _onItemSelect,
        currentIndex: _currentIndex,
      ),
    );
  }

  renderAppBar(BuildContext context, int currentIndex) {}

  void _onItemSelect(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
