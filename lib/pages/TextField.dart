import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var flag = true;

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
                  Checkbox(
                      value: this.flag,
                      onChanged: (v) {
                        setState(() {
                          this.flag = v;
                        });
                      })
                ],
              ),
            )
          ],
        ));
  }
}
