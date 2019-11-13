import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_go/routers/application.dart';

class WidgetGrid extends StatelessWidget {
  int lineCount;
  List<WidgetItemData> widgets = [];

  WidgetGrid({this.lineCount = 3, this.widgets});

  buildGrid(BuildContext context) {
    return new ListView(
      children: _buildItem(context),
    );
  }

  _buildItem(BuildContext context) {
    List<Widget> _lines = [];
    List<Widget> _rows = [];
    for (int i = 0; i < widgets.length; i += lineCount) {
      _rows = [];
      for (int j = i; j < (i + lineCount); j++) {
        if (j < widgets.length) {
          _rows.add(
            new Expanded(
              flex: 1,
              child: WidgetItem(
                data: widgets[j],
                index: j,
                lineCount: lineCount,
                onTab: () {
                  String targetRouter = '/widget_demo/${widgets[j].id}';
                  Application.router.navigateTo(context, targetRouter,
                      transition: TransitionType.inFromRight);
                },
              ),
            ),
          );
        } else {
          _rows.add(
            new Expanded(
              child: new Container(),
              flex: 1,
            ),
          );
        }
      }
      _lines.add(new Row(
        children: _rows,
      ));
    }
    return _lines;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: buildGrid(context),
    );
  }
}

class WidgetItem extends StatelessWidget {
  WidgetItemData data;
  VoidCallback onTab;
  int index;
  int lineCount;
  Color bgColor;

  WidgetItem({this.data, this.onTab, this.index, this.lineCount}) {
    bool singleLine = index ~/ lineCount == 0;
    bool singleInLine = (index % lineCount) % 2 == 0;
    if (singleLine) {
      bgColor = singleInLine ? Colors.white : Color(0xFFE0E0E0);
    } else {
      bgColor = singleInLine ? Color(0xFFE0E0E0) : Colors.white;
    }
  }

  final textStyle = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: new Container(
        height: 100,
        color: bgColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Icon(
              data.icon,
              color: Colors.red,
            ),
            SizedBox(
              height: 5,
            ),
            new Text(
              data.name,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetItemData {
  String name;
  IconData icon = Icons.widgets;
  String id;

  WidgetItemData(this.name, this.icon, this.id);
}
