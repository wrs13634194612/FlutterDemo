import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "对话框样式",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(
        title: "对话框样式",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("文件删除"),
            content: Text("删除后无法恢复"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  debugPrint("取消");
                },
                child: Text("取消"),
              ),
              FlatButton(
                onPressed: () {
                  debugPrint("删除");
                },
                child: Text("删除"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        tooltip: 'AlertDialog',
        child: Icon(Icons.delete),
      ),
    );
  }
}
