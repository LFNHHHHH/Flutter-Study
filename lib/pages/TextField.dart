import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  int sex = 1;

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
                  Radio(
                      value: 1,
                      groupValue: this.sex,
                      onChanged: (v) {
                        this.setState(() {
                          this.sex = v;
                        });
                      }),
                  Radio(
                      value: 2,
                      groupValue: this.sex,
                      onChanged: (v) {
                        this.setState(() {
                          this.sex = v;
                        });
                      }),
                  Text(this.sex == 1 ? '男' : '女')
                ],
              ),
            )
          ],
        ));
  }
}
