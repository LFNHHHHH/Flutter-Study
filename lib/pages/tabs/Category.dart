import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: TabBar(
                      tabs: <Widget>[
                        Tab(text: '热门'),
                        Tab(text: '推荐'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ListTile(title: Text('第一个 tab')),
                    ListTile(title: Text('第一个 tab')),
                    ListTile(title: Text('第一个 tab')),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(title: Text('第二个 tab')),
                    ListTile(title: Text('第二个 tab')),
                    ListTile(title: Text('第二个 tab')),
                  ],
                ),
              ],
            )));
  }
}
