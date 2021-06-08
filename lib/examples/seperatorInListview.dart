import 'package:flutter/material.dart';

class seperatorInListview extends StatefulWidget {
  seperatorInListview({Key key}) : super(key: key);

  @override
  _seperatorInListviewState createState() => _seperatorInListviewState();
}

class _seperatorInListviewState extends State<seperatorInListview> {
  final List _items = List.generate(100, (index) => 'Item$index');
  @override
  Widget build(BuildContext context) {
    return Text('HI!!');
    // return ListView.builder(
    //   itemCount: _items.length,
    //   itemBuilder: (context, index) {
    //     return Text(_items[index]);
    //   },
    // );
  }
}
