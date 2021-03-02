import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  // 组件初始化的生命周期函数
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(vsync: this, length: 2);

    // 监听 tabs 改变
    _tabController.addListener(() {
      print(_tabController.index); // 打印此时 tabs 的索引值
    });
  }

  // 组件销毁的生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('TabBarControllerPage'),
            bottom: TabBar(controller: this._tabController, // 注意一定要加上
                tabs: <Widget>[
                  Tab(text: '热销'),
                  Tab(text: '推荐'),
                ])),
        body: TabBarView(
          controller: this._tabController, // 注意一定要加上
          children: <Widget>[
            Center(child: Text('热销')),
            Center(child: Text('推荐')),
          ],
        ));
  }
}
