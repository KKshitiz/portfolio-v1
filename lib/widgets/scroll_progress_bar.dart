import 'package:flutter/material.dart';

class ScrollProgressBar extends StatelessWidget {
  const ScrollProgressBar({
    Key key,
    @required this.cWidth,
  }) : super(key: key);

  final double cWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        height: 8,
        width: cWidth,
        color: Colors.blue,
      ),
    );
  }
}
