import 'package:flutter/material.dart';
import '../Tabs.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            ListTile(title: Text('我是一个文本')),
            ListTile(title: Text('我是一个文本')),
            ListTile(title: Text('我是一个文本')),
            ListTile(title: Text('我是一个文本')),
          ],
        ),
        RaisedButton(child: Text('跳转到登录页面'), onPressed: () {}),
        RaisedButton(
            child: Text('跳转到注册页面'),
            onPressed: () {
              // Navigator.of(context).pushReplacementNamed('pageroute');
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (context) => new Tabs(index: 1)),
                  (route) => route == null);
            }),
      ],
    );
  }
}
