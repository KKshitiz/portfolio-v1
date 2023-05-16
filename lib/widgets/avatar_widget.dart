import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.radius}) : super(key: key);
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
