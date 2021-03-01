import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title: 'FormPage'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        // title: Text('123'),
      ),
      body: Text('我是表单页面的内容区域'),
    );
  }
}

// class FormPage extends StatefulWidget {
//   FormPage({Key key}) : super(key: key);

//   @override
//   _FormPageState createState() => _FormPageState();
// }

// class _FormPageState extends State<FormPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Text('返回'),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       ),
//       appBar: AppBar(
//         title: Text('搜索页面'),
//       ),
//       body: Text('搜索页面内容区域'),
//     );
//   }
// }
