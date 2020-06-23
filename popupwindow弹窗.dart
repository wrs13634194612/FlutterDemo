
import 'package:flutter/cupertino.dart';

List<String> title;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    title = new List();
    title.add("Home");
    title.add("book");
    title.add("Setting");
    return CupertinoApp(
      title: 'flutter demo',
      home: new MyHomePage(
        title: "flutter demo",
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
  CupertinoActionSheet buildCupertinoActionSheet(BuildContext context) {
    return CupertinoActionSheet(
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          debugPrint("取消");
          Navigator.pop(context);
        },
        child: Text("取消"),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: () {
            debugPrint("喜欢");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(CupertinoIcons.heart_solid),
              Container(
                width: 5.0,
              ),
              Text("喜欢")
            ],
          ),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            debugPrint("跳过");
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(CupertinoIcons.folder_solid),
              Container(
                width: 5.0,
              ),
              Text("跳过")
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(widget.title),
        ),
        child: Center(
          child: CupertinoButton(
            child: Text("Show menu"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return buildCupertinoActionSheet(context);
                },
              );
            },
          ),
        ));
  }
}
