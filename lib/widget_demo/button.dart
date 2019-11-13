import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Button"),
      ),
      body: new Container(
        color: Colors.white54,
        child: new ListView(
          children: <Widget>[
            ListTile(
              title: const Text("PopupMenuButton"),
              trailing: PopupMenuButton(
                icon: Icon(Icons.add),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: new Text("选项1"),
                    )
                  ];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
