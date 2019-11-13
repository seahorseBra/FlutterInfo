import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PullToRefreshState();
  }
}

class PullToRefreshState extends State {
  RefreshController refreshController;
  int count = 0;

  @override
  void initState() {
    super.initState();
    refreshController = new RefreshController(initialRefresh: true);
  }

  _refresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      count = 10;
      refreshController.refreshCompleted();
    });
  }

  _loadMore() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      count += 10;
      refreshController.loadComplete();
    });
  }
  _onOffsetChange(bool up, double offset){
    print("isup:$up;$offset");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("PullToRefresh"),
      ),
      body: new Container(
        color: Colors.red,
        child: SmartRefresher(
          onOffsetChange: _onOffsetChange,
          controller: refreshController,
          onRefresh: _refresh,
          enablePullUp: true,
          onLoading: _loadMore,
          child: new ListView.builder(
            itemBuilder: (context, index) {
              return new Container(
                height: 100,
                alignment: Alignment.center,
                child: new Text("$index"),
                color: index % 2 == 0 ? Colors.red : Colors.green,
              );
            },
            itemCount: count,
          ),
        ),
      ),
    );
  }
}
