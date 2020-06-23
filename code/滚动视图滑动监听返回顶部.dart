import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "线性滚动组件监听与控制",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: new ListViewController(),
    );
  }
}

class ListViewController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListControllerState();
  }
}

class ListControllerState extends State<ListViewController> {
  ScrollController scrollController = new ScrollController();
  var isShowBackToTopBtn = false;

  //instate 方法 做监听
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      debugPrint("yubkj: "+scrollController.offset.toString());
      if (scrollController.offset < 30 && isShowBackToTopBtn) {
        setState(() {
          isShowBackToTopBtn = !isShowBackToTopBtn;
        });
      } else if (scrollController.offset >= 30 && !isShowBackToTopBtn) {
        setState(() {
          isShowBackToTopBtn = !isShowBackToTopBtn;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      floatingActionButton: isShowBackToTopBtn
          ? new FloatingActionButton(
              onPressed: (() {
                scrollController.animateTo(0.0,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.linear);
              }),
              child: Icon(Icons.keyboard_arrow_up),
            )
          : null,
      appBar: new AppBar(
        title: new Text("线性滚动组件监听与控制"),
      ),
      body: new ListView.builder(
          itemCount: 50,
          itemExtent: 30,
          controller: scrollController,
          itemBuilder: (BuildContext context,int index){
            return new Text("当前位置：$index");
          },),
    );
  }
}
