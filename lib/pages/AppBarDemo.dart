import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('AppBarDemoPage'),
              // backgroundColor: Colors.red,
              centerTitle: true,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: '热门1'),
                  Tab(text: '推荐'),
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
