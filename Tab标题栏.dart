import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.green),
      home: new MyHomePage(
        title: "TextHome",
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

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  var _tabs = <Tab>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(initialIndex: 0, length: 3, vsync: this);
    _tabs = <Tab>[
      Tab(
        text: "TabA",
      ),
      Tab(
        text: "TabB",
      ),
      Tab(
        text: "TabC",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
        bottom: TabBar(
          tabs: _tabs,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: _tabs
            .map((Tab tab) => Container(child: Center(child: Text(tab.text))))
            .toList(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
