import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      ),
      ListTile(
        title: const Text("FlatButton"),
        trailing: FlatButton.icon(
          color: Colors.grey,
          focusColor: Colors.red,
          splashColor: Colors.yellow,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {
            print("toast");
            Fluttertoast.showToast(
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
                backgroundColor: Colors.white,
                msg: "flat button",
                textColor: Colors.black);
          },
//                shape: Border.all(color: Colors.grey, width: 1),
          icon: Icon(Icons.add),
          label: Text("FlatButton"),
        ),
      ),
      ListTile(
        title: const Text("FlatButton"),
        trailing: FlatButton(
          color: Colors.grey,
          focusColor: Colors.red,
          splashColor: Colors.yellow,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {
            print("toast");
            Fluttertoast.showToast(
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
                backgroundColor: Colors.white,
                msg: "flat button",
                textColor: Colors.black);
          },
          shape: Border.all(color: Colors.red, width: 1),
          child: Text("FlatButton"),
        ),
      ),
      ListTile(
        title: const Text("IconButton"),
        trailing: IconButton(
            icon: Icon(
              Icons.call,
            ),
            highlightColor: Colors.red,
            splashColor: Colors.red,
            onPressed: () => _showToast("打电话")),
      ),
      ListTile(
          title: const Text("FloatButton"),
          trailing: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => {
              _showToast("打电话")}),
    ),]
    ,
    )
    ,
    )
    ,
    );
  }

  _showToast(String msg) {
    Fluttertoast.showToast(
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.white,
        msg: msg,
        textColor: Colors.black);
  }
}
