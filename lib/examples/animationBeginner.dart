import 'package:flutter/material.dart';

class animationBeginner extends StatelessWidget {
  const animationBeginner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animation Beginner",
      home: animationSample(),
    );
  }
}

class animationSample extends StatefulWidget {
  animationSample({Key key}) : super(key: key);

  @override
  _animationSampleState createState() => _animationSampleState();
}

class _animationSampleState extends State<animationSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Beginner Sample"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: animationSample1(),
          ),
          Expanded(
            flex: 1,
            child: animationSample2(),
          ),
          Expanded(
            flex: 1,
            child: animationSample3(),
          ),
        ],
      ),
    );
  }
}

class animationSample1 extends StatefulWidget {
  animationSample1({Key key}) : super(key: key);

  @override
  _animationSample1State createState() => _animationSample1State();
}

class _animationSample1State extends State<animationSample1>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _controller.repeat(reverse: true);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext _, child) {
          return Transform.scale(
            scale: _controller.value,
            child: child,
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: 80,
          height: 80,
          color: Colors.pink.shade300,
        ),
      ),
    );
  }
}

class animationSample2 extends StatefulWidget {
  animationSample2({Key key}) : super(key: key);

  @override
  _animationSample2State createState() => _animationSample2State();
}

class _animationSample2State extends State<animationSample2>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> tween;
  @override
  void initState() {
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animationController.repeat(reverse: true);
    tween = ColorTween(begin: Colors.yellow, end: Colors.purple)
        .animate(_animationController);

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose(); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: tween,
        builder: (BuildContext _, Widget child) {
          return Container(
            width: 80,
            height: 80,
            color: tween.value,
          );
        },
      ),
    );
  }
}

class animationSample3 extends StatefulWidget {
  animationSample3({Key key}) : super(key: key);

  @override
  _animationSample3State createState() => _animationSample3State();
}

class _animationSample3State extends State<animationSample3>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Decoration> _decorationAnimation;
  @override
  void initState() {
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 3,
      ),
    );
    _animationController.repeat(reverse: true);
    _decorationAnimation = DecorationTween(
        begin: BoxDecoration(
          color: Colors.purple,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        end: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 10),
          borderRadius: BorderRadius.circular(100),
        )).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBoxTransition(
        child: Container(
          width: 80,
          height: 80,
        ),
        decoration: _decorationAnimation,
      ),
    );
  }
}
