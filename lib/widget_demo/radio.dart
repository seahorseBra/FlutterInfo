import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RadioAppState();
  }
}

class RadioAppState extends State {
  String value = '';

  _onChange(value) {
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Radio"),
      ),
      body: new Column(
        children: <Widget>[
          RadioListTile(
            title: Text("A"),
            value: "A",
            groupValue: this.value,
            onChanged: _onChange,
          ),
          RadioListTile(
            title: Text("B"),
            value: "B",
            groupValue: this.value,
            onChanged: _onChange,
          ),
        ],
      ),
    );
  }
}
