import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class Avatar extends StatelessWidget {
  Avatar({@required this.radius});
  final radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: kBorderWidth, color: kBorderColor)),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: radius,
        child: kAvatarImage,
      ),
    );
  }
}
