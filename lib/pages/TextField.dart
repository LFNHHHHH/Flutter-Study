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
                  CheckboxListTile(
                    value: this.flag,
                    onChanged: (v) {
                      this.setState(() {
                        this.flag = v;
                      });
                    },
                    title: Text('标题'),
                    subtitle: Text('二级标题'),
                    secondary: Icon(Icons.help),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
