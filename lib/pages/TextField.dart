import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  String username;
  int sex = 1;
  String info;

  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": true, "title": "打豆豆"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];

    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(children: <Widget>[
        Text(this.hobby[i]["title"] + "："),
        Checkbox(
            value: this.hobby[i]["checked"],
            onChanged: (v) {
              setState(() {
                this.hobby[i]["checked"] = v;
              });
            })
      ]));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('学员信息登录'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  // 姓名
                  TextField(
                    decoration: InputDecoration(hintText: '请输入用户信息'),
                    onChanged: (value) {
                      this.setState(() {
                        this.username = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // 性别
                  Row(
                    children: <Widget>[
                      Text('男'),
                      Radio(
                          value: 1,
                          groupValue: this.sex,
                          onChanged: (v) {
                            this.setState(() {
                              this.sex = v;
                            });
                          }),
                      SizedBox(width: 20),
                      Text('女'),
                      Radio(
                          value: 2,
                          groupValue: this.sex,
                          onChanged: (v) {
                            this.setState(() {
                              this.sex = v;
                            });
                          }),
                    ],
                  ),
                  SizedBox(height: 40),

                  // 爱好
                  Column(
                    children: this._getHobby(),
                  ),
                  SizedBox(height: 40),

                  // 描述信息
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: '描述信息', border: OutlineInputBorder()),
                    onChanged: (value) {
                      this.setState(() {
                        this.info = value;
                      });
                    },
                  ),
                  SizedBox(height: 40),

                  // 提交按钮
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: RaisedButton(
                        child: Text('确定'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          print(this.username);
                          print(this.sex);
                          print(this.hobby);
                          print(this.info);
                        }),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
