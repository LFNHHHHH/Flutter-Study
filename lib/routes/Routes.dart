import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/TextField.dart';

// 配置路由
final routes = {
  '/': (context) => Tabs(),
  '/textfield': (context) => TextFieldDemoPage(),
};

// 固定写法
// 获取声明的路由页面函数
Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
    }
  }
};
