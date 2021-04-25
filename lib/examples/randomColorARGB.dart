import 'dart:math';

import 'package:flutter/material.dart';

class randomColorARGB extends StatelessWidget {
  final _gridviewList = List.generate(100, (index) => "item $index");
  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radomColor using ARGB'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: _gridviewList.length,
          itemBuilder: (_, index) {
            return Card(
              elevation: 50,
              child: Container(
                color: Color.fromARGB(
                  _random.nextInt(255),
                  _random.nextInt(255),
                  _random.nextInt(255),
                  _random.nextInt(255),
                ),
                child: Text(_gridviewList[index]),
              ),
            );
          }),
    );
  }
}
