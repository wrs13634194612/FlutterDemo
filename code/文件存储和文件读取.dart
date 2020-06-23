import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(new MaterialApp(
      title: "文件读写",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: new FileRWDemo(),
    ));

class FileRWDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FileRWDemoState();
  }
}

class FileRWDemoState extends State<FileRWDemo> {
  int _counter;

  Future<File>  _getLocalFile() async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    debugPrint("$dir/counter.dat");
    return new File("$dir/counter.dat");
  }

  Future<int> _readCounter() async {
    try {
      File file = await _getLocalFile();
      String contents = await file.readAsString();
      return int.parse(contents);
    } on FileSystemException {
      return 0;
    }
  }

  Future<Null> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await (await _getLocalFile()).writeAsString('$_counter');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("文件读写"),
      ),
      body: new Text("按钮点击次数：$_counter"),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        child: new Icon(Icons.add),
        tooltip: "Increment",
      ),
    );
  }
}
