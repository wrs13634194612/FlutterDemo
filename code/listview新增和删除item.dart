
import 'package:flutter/material.dart';

void main() => runApp(new BodyLayout());

class BodyLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BodyLayoutState();
  }
}

class BodyLayoutState extends State<BodyLayout> {
  List<String> titles = ['Sun', 'Moon', 'Star'];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          final item = titles[index];
          return Card(
            child: ListTile(
              title: Text(item),
              onTap: () {
                setState(() {
                  titles.insert(index, 'Planet');
                });
              },
              onLongPress: () {
                setState(() {
                  titles.removeAt(index);
                });
              },
            ),
          );
        });
  }
}


