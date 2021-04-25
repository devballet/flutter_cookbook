import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class randomColorDependency extends StatelessWidget {
  final _gridviewList = List.generate(100, (index) => 'item $index');
  RandomColor _randomColor = new RandomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RandomColor With Dependency'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: _gridviewList.length,
          itemBuilder: (_, index) {
            return Card(
              child: Container(
                color: _randomColor.randomColor(colorHue: ColorHue.green),
                child: Text(_gridviewList[index]),
              ),
            );
          }),
    );
  }
}
