import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  // String title;
  // SearchPage({this.title: '666'});
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
        // title: Text('123'),
      ),
      body: Text('测试${arguments != null ? arguments['content'] : 'null'}'),
      // body: Text('4567'),
    );
  }
}

// class SearchPage extends StatefulWidget {
//   SearchPage({Key key}) : super(key: key);

//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
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
