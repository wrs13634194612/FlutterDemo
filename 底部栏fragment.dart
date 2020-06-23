
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(title[index]),
              ),
              child: Center(
                child: Text("${title[index]} page"),
              ),
            );
          },
        );
      },
      tabBar: CupertinoTabBar(
          onTap: (int index) {
            debugPrint("点击第$index个页面");
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text(title[0]),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              title: Text(title[1]),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              title: Text(title[2]),
            )
          ]),
    );
  }
}
