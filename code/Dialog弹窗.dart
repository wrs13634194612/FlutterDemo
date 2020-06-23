import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Dialog",
      theme: ThemeData(primarySwatch: Colors.green),
      home: new MyHomePage(
        title: "Dialog",
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
  void showSimpleDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("一个Dialog例子"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("选项B"),
                onPressed: () {
                  debugPrint("点击了选项A");
                },
              ),
              SimpleDialogOption(
                child: Text("选项B"),
                onPressed: () {
                  debugPrint("点击了选项B");
                },
              ),
              SimpleDialogOption(
                child: Text("选项C"),
                onPressed: () {
                  debugPrint("点击了选项C");
                },
              ),
              SimpleDialogOption(
                child: Text("选项D"),
                onPressed: () {
                  debugPrint("点击了选项D");
                },
              ),
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
        onPressed: showSimpleDialog,
        tooltip: 'SimplaDoialog',
        child: Icon(Icons.flip_to_front),
      ),
    );
  }
}
