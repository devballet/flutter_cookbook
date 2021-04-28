import 'package:flutter/material.dart';

List<Color> themeColors = [
  Color(0xfff39805),
  Color(0xfff37806),
  Color(0xff044f4d),
  Color(0xff123b3a),
];

class roundListView extends StatelessWidget {
  const roundListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06171e),
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Color(0xffecc78a),
      ),
      body: ListView.builder(
        itemCount: themeColors.length,
        itemBuilder: (context, index) {
          return Container(
            // This is the back container which will show next cell colour on the rounded edge
            color: index + 1 < themeColors.length
                ? themeColors[index +
                    1] // get next row background as back container background
                : Colors
                    .transparent, // Otherwise keep it transparent to prevent out of bounds error
            child: Container(
              height: 180,
              decoration: new BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(85.0)),
                color: themeColors[index],
              ),
              child: Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
