
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      title: "page one",
      home: PageOne(
        title: "page1",
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  final String title;

  PageOne({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageOneState();
  }
}

class PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("page one"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("page one"),
              CupertinoButton(
                child: Text("jump to page two"),
                onPressed: () {
                  debugPrint("jump to page two");
                  Navigator.push(
                    context,
                    new CupertinoPageRoute(builder: (context) => new PageTwo()),
                  );
                },
              )
            ],
          ),
        ));
  }
}

class PageTwo extends StatefulWidget {
  final String title;

  PageTwo({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageTwoState();
  }
}

class PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("page one"),
        trailing: CupertinoButton(
          padding: EdgeInsets.all(10.0),
          child: Text("Delete"),
          onPressed: () {
            debugPrint("delete");
          },
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("page two"),
          ],
        ),
      ),
    );
  }
}
