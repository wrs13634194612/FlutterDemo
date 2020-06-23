import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "组件间的图片数据传递",
      theme: ThemeData(primarySwatch: Colors.red),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("组件间的图片数据传递"),
        ),
        body: new ShareDataWidget(
          color: Colors.blue,
          child: new Center(
            child: new Column(
              children: <Widget>[
                new IconList(Icons.arrow_upward),
                new IconList(Icons.arrow_forward),
                new IconList(Icons.arrow_downward),
                new IconList(Icons.arrow_back),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconList extends StatefulWidget {
  final IconData icon;

  IconList(this.icon);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new IconListState(icon);
  }
}

class IconListState extends State<IconList> {
  var icon;

  IconListState(this.icon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Icon(icon, color: ShareDataWidget.of(context).color);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

class ShareDataWidget extends InheritedWidget {
  final Color color;

  ShareDataWidget({this.color, Widget child}) : super(child: child);

  static ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget);
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.color != color;
  }
}
