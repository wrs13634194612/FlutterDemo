自定义的listview，带图文的那种
打开pubspec.yaml文件，添加
flutter:
  assets:
    - assets/
点击右上角的packages get
开始main.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'listview',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('listviews of flutter')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/pig.png'),
          ),
          title: Text('pig'),
          subtitle: Text('肉肉的，看起来很可爱'),
        ),
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/cat.png'),
            ),
            title: Text('cat'),
            subtitle: Text('懒散的美，懂的享受生活'),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dog.png'),
          ),
          title: Text('dog'),
          subtitle: Text('这货看起来很可爱，但是智商好像不高'),
        ),
      ],
    );
  }
}

