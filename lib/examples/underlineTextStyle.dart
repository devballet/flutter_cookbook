import 'package:flutter/material.dart';

class underlineTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "underlineTextStyle",
            style: TextStyle(color: Colors.yellow),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "This is default underline",
                style: TextStyle(
                    fontSize: 20, decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "This is dot underline",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted,
                    decorationThickness: 3),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "This is wave underline",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationColor: Colors.purple,
                    decorationThickness: 2),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Gap of font and undereline",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.transparent,
                    shadows: [
                      Shadow(offset: Offset(0, -20), color: Colors.black)
                    ],
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.pink,
                    decorationThickness: 4),
              ),
              SizedBox(
                height: 40,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(text: 'This is RichText and it can make '),
                    TextSpan(
                      text: 'HIGHTLIGHT',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                    ),
                    TextSpan(text: ' between TextSpan'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
