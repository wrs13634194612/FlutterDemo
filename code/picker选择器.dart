import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
  CupertinoPicker buildCupertinoPicker(BuildContext context) {
    return CupertinoPicker(
      itemExtent: 30,
      looping: false,
      backgroundColor: CupertinoColors.white,
      onSelectedItemChanged: (index) {
        debugPrint("current select $index");
      },
      children: List<Widget>.generate(5, (index) {
        return Center(
          child: Text("我是第$index个项目"),
        );
      }),
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
          child: Text("show cupertinoPicker"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return buildCupertinoPicker(context);
              },
            );
          },
        ),
      ),
    );
  }
}
