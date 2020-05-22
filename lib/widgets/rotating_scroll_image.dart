import 'package:flutter/material.dart';
import 'dart:math';

class RotatingImage extends StatelessWidget {
  const RotatingImage({
    Key key,
    @required this.scrollController,
    @required this.screenWidth,
  }) : super(key: key);

  final ScrollController scrollController;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: AnimatedBuilder(
        animation: scrollController,
        child: Container(
          width: 200.0,
          height: 200.0,
          child: Center(
            child: Image.asset('images/rotating-image.png'),
          ),
        ),
        builder: (BuildContext context, Widget child) {
          return Transform.rotate(
            angle: scrollController.offset / screenWidth * 2.0 * pi,
            child: child,
          );
        },
      ),
    );
  }
}
