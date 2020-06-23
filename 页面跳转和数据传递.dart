第一个文件main：

import 'package:flutter/material.dart';
import 'page_2.dart';
import 'page_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "页面跳转和数据传递",
      theme: ThemeData(primarySwatch: Colors.green),
      home: new MyHomePage(
        title: "页面跳转和数据传递",
      ),
      routes: {"page_2": (BuildContext context) => new Page2()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("页面跳转和数据传递"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('you hava pushed the button this many times'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text("跳转到页面二"),
              onPressed: () {
                Navigator.pushNamed(context, "page_2");
              },
            ),
            RaisedButton(
              child: Text("跳转到页面三"),
              onPressed: () {
                Navigator.push<int>(context,
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return new Page3(_counter);
                })).then((int backData) {
                  setState(() {
                    if (backData != null) {
                      _counter = backData;
                    }
                  });
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}


第二个文件page2：
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "页面二",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("页面二"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => Navigator.pop(context, null),
            child: new Text("返回"),
          ),
        ),
      ),
    );
  }
}



第三个文件page3：

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  var currentNum;

  Page3(this.currentNum);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "页面三",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("页面三"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("当前计数器的值：$currentNum,返回后将重置"),
              RaisedButton(
                onPressed: () => Navigator.pop(context, 0),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}



