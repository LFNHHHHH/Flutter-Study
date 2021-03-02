import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text('跳转到AppBarDemo页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/appbardemo');
            }),
        RaisedButton(
            child: Text('TabController定义tab切换'),
            onPressed: () {
              Navigator.pushNamed(context, '/tabbarcontroller');
            }),
        // SizedBox(height: 20),
      ],
    );
  }
}
