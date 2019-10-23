import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class CustomizedAnimatedImage extends StatefulWidget {
  final Widget child;

  CustomizedAnimatedImage({this.child, Key key}) : super(key: key);

  @override
  _CustomizedAnimatedImageState createState() => _CustomizedAnimatedImageState();
}

class _CustomizedAnimatedImageState extends State<CustomizedAnimatedImage> with SingleTickerProviderStateMixin {

  ShakeDetector _detector;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            child: Image.asset("assets/images/whip.gif"),
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
      print("Starting to listen to events");
      _detector = ShakeDetector.autoStart(
          onPhoneShake: () {
            if (!_controller.isAnimating) {
              _controller.forward();
              Future.delayed(Duration(seconds: 2)).then((_) =>
                  _controller.reverse());
            }
          }
      );
    }
  }

  @override
  void dispose() {
    _detector.stopListening();
    super.dispose();
  }


}
