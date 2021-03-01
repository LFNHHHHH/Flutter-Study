import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉 debug 图标
      title: 'Flutter Demo 666',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Tabs(),
      initialRoute: '/appbardemo',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
