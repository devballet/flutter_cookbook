import 'dart:math';

import 'package:flutter/material.dart';

class randomColorPrimaries extends StatelessWidget {
  final _listItems = List.generate(200, (index) => "item $index");
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("randomColorPrimaries"),
      ),
      body: ListView.builder(
        itemCount: _listItems.length,
        itemBuilder: (_, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
                  [_random.nextInt(9) * 100],
              child: Text(
                _listItems[index],
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        },
      ),
    );
  }
}
