import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RadioAppState();
  }
}

class RadioAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Radio"),
      ),
      body: new Container(
        color: Colors.green,
      ),
    );
  }
}
