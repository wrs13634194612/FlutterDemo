第二个程序  调用字体库
（1）打开pubspec.yaml文件，
dev_dependencies:
  flutter_test:
    sdk: flutter
（2）输入下面这两行
  cupertino_icons: ^0.1.0
  english_words: ^3.1.0
（3）点击右上角Packages get，点击run，打开控制台，可以看到这个日志
Performing hot reload...
Syncing files to device Lenovo L38041...
Reloaded 0 of 555 libraries in 254ms.
这样表示类库加载成功，然后去lib目录下的main.dart文件，输入：
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'welcome to flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('welcome to flutter of ios'),
        ),
        body: new Center(
          child: new Text(wordPair.asCamelCase),
        ),
      ),
    );
  }
}
