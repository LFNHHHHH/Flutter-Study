import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime _nowDate = DateTime.now();

  // 获取值1
  // _showDatePicker() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: _nowDate,
  //           firstDate: DateTime(1980),
  //           lastDate: DateTime(2100))
  //       .then((value) => print(value));
  // }

  // 获取值2
  _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100));

    if (result == null) return;

    setState(() {
      this._nowDate = result;
    });
  }

  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);

    if (result == null) return;

    setState(() {
      this._nowTime = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Date'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(formatDate(
                          this._nowDate, [yyyy, '年', mm, '月', dd, '日'])),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showDatePicker,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${this._nowTime.format(context)}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showTimePicker,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
