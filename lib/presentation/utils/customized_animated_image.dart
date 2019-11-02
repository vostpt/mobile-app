import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'dart:math' as  math;

class CustomizedAnimatedImage extends StatefulWidget {
  final Widget child;

  CustomizedAnimatedImage({this.child, Key key}) : super(key: key);

  @override
  _CustomizedAnimatedImageState createState() => _CustomizedAnimatedImageState();
}

class _CustomizedAnimatedImageState extends State<CustomizedAnimatedImage> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        widget.child,
        AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget child) {
            return Transform.translate(
              offset: Offset(0, size.height - (max(size.height*.75, size.width) * (_controller.value))),
              child: child,
            );
          },
          child: SizedBox(
            width: size.width,
            height: size.width,
            child: Image.asset("assets/images/problem.gif"),
          ),
        )
      ],
    );
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      _controller = AnimationController(duration: const Duration(milliseconds: 250), vsync: this);
      accelerometerEvents.listen((AccelerometerEvent event) {
         if (!_controller.isAnimating && (event.x) > 4 || (event.x) < -4) {
           _controller.forward();
           Future.delayed(Duration(seconds: 2)).then((_) =>
               _controller.reverse());
         }
      });
    }
  }
}
