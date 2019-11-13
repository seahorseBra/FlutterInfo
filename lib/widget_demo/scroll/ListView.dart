import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListAppState();
  }
}

class ListAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ListView"),
      ),
      body: new Container(
        color: Colors.green,
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: new Text("${index + 1}"),
            );
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
