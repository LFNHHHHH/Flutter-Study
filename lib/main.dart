import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Search.dart';
import 'pages/Form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    // '/search': (context, {arguments}) => SearchPage(arguments: arguments),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments),
    '/form': (context) => FormPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 666',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings) {
        // 获取声明的路由页面函数
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
      },
    );
  }
}
