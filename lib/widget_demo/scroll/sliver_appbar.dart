import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SliverAppBarState();
  }
}

class SliverAppBarState extends State with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
//          SliverAppBar(
//            elevation: 0,
//            pinned: true,
//            expandedHeight: 250,
//            flexibleSpace: FlexibleSpaceBar(
//              title: Text("SliverAppBar"),
//              collapseMode: CollapseMode.pin,
//              background: Image.network(
//                'http://img1.mukewang.com/5c18cf540001ac8206000338.jpg',
//                fit: BoxFit.cover,
//              ),
//            ),
//          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: new Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text("标题1"),
              ),
            ),
          ),
          getList(),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: new Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text("标题2"),
              ),
            ),
          ),
          getGrid(),
        ],
      ),
    );
  }
}

Widget getGrid() {
  return SliverGrid(
    delegate: new SliverChildBuilderDelegate((context, index) {
      return new Container(
        color: index % 2 == 0 ? Colors.grey : Colors.white,
        child: Text("$index"),
      );
    }, childCount: 40),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
  );
}

Widget getList() {
  return SliverList(
    delegate: SliverChildBuilderDelegate((context, index) {
      return new Container(
        alignment: Alignment.center,
        child: new Text("$index"),
        height: 50,
      );
    }, childCount: 50),
  );
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class TransTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  TransTabBarDelegate({@required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
