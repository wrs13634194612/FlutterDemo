import 'packagefluttermaterial.dart';

void main() = runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     TODO implement build
    return MaterialApp(
      title 自定义listview,
      theme ThemeData(primarySwatch Colors.purple),
      home Scaffold(
        appBar AppBar(
          title new Text(自定义listview),
        ),
        body new ListView.custom(
          childrenDelegate
              new CustomChildrenDelegate((BuildContext context, int index) {
            return new Text(当前位置：$index);
          }, childCount 50),
          itemExtent 30.0,
          cacheExtent 0.0,
        ),
      ),
    );
  }
}

class CustomChildrenDelegate extends SliverChildBuilderDelegate {
  CustomChildrenDelegate(
    Widget Function(BuildContext, int) builder, {
    int childCount,
    bool addAutomaticKeepAlive = true,
  })  super(
          builder,
          childCount childCount,
          addAutomaticKeepAlives addAutomaticKeepAlive,
        );

  @override
  void didFinishLayout(int firstIndex, int lastIndex) {
     TODO implement didFinishLayout
    super.didFinishLayout(firstIndex, lastIndex);
    debugPrint(Finish! start at $firstIndex,end at $lastIndex);
  }
}
