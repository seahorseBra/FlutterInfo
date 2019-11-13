import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SliverAppState();
  }
}

///sliver系列
///sliver系列主要是使用CustomScrollView包裹一些列的sliver组件，注意不能直接使用widget放到列表里边
///必须使用[SliverToBoxAdapter]来包裹
///整个列表的滑动都统一通过CustomScrollView来控制
class SliverAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Sliver"),
      ),
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: new Container(
              height: 100,
              alignment: Alignment.centerLeft,
              color: Colors.grey,
              child: Text("第一组"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return new Container(
                color: index % 2 == 0 ? Colors.red : Colors.green,
                alignment: Alignment.center,
                height: 50,
                child: Text("$index"),
              );
            }, childCount: 10),
          ),
          SliverGrid(
            delegate: new SliverChildBuilderDelegate((context, index) {
              return new Container(
                color: index % 2 == 0 ? Colors.red : Colors.green,
                alignment: Alignment.center,
                child: Text("$index"),
              );
            }, childCount: 50),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
          SliverFixedExtentList(
            delegate: new SliverChildBuilderDelegate((context, index) {
              return new Container(
                color: index % 2 == 0 ? Colors.red : Colors.green,
                alignment: Alignment.center,
                child: Text("$index"),
              );
            }, childCount: 50),
            itemExtent: 100,
          )
        ],
      ),
    );
  }
}
