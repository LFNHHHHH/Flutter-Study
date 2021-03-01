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
            child: Text('跳转到搜索页面2'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/search', arguments: {
                "content": "ok" //参数map
              });
            }),
        RaisedButton(
            child: Text('跳转到商品页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }),
        // SizedBox(height: 20),
      ],
    );
  }
}
