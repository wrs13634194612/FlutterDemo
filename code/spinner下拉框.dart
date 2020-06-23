import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Spinner",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: new MyHomePage(
        title: "Spinner",
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
  var currentIndex = -1;
  List<int> mList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mList = new List();
    for (int i = 0; i < 3; i++) {
      mList.add(i);
    }
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                currentIndex = (currentIndex != index) ? index : -1;
              });
            },
            children: mList.map((i) {
              switch (i){
                case 0:
                  return new ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return new ListTile(
                        title: new Text("三国人物"),
                      );
                    },
                    body: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListBody(
                        children: <Widget>[
                          new Text("张飞"),
                          new Text("刘备"),
                          new Text("赵云"),
                          new Text("吕布"),
                        ],
                      ),
                    ),
                    isExpanded: currentIndex == i,
                  );
                  break;
                case 1:
                  return new ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return new ListTile(
                        title: new Text("西游人物"),
                      );
                    },
                    body: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListBody(
                        children: <Widget>[
                          new Text("八戒"),
                          new Text("悟空"),
                          new Text("唐僧"),
                        ],
                      ),
                    ),
                    isExpanded: currentIndex == i,
                  );
                  break;
                case 2:
                  return new ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return new ListTile(
                        title: new Text("红楼人物"),
                      );
                    },
                    body: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListBody(
                        children: <Widget>[
                          new Text("宝玉"),
                          new Text("晴雯"),
                          new Text("袭人"),
                          new Text("惜春"),
                          new Text("探春"),
                        ],
                      ),
                    ),
                    isExpanded: currentIndex == i,
                  );
                  break;
              }
            }).toList(),
          ),
        ),
      ),
    );
  }
}
