import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var _username = new TextEditingController();
  @override
  void initState() {
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单演示页面'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: '请输入用户名'),
                    controller: _username,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: RaisedButton(
                        child: Text('登录'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          print(_username.text);
                        }),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
