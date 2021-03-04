import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text('商品页面')),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              print('FloatingActionButton');
            },
            backgroundColor: Colors.red,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('跳转到商品详情'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/productinfo',
                        arguments: {'pid': 3366});
                  }),
              MyButton(
                  text: '自定义按钮',
                  width: 100.0,
                  height: 80.0,
                  pressed: () {
                    print('hello');
                  })
              // SizedBox(height: 20),
            ],
          )),
    );
  }
}

// 自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton(
      {this.text = '', this.pressed = null, this.height = 30, this.width = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: this.height,
        width: this.width,
        child: RaisedButton(child: Text(this.text), onPressed: this.pressed),
      ),
    );
  }
}
