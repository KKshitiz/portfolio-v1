import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: kBorderWidth, color: kBorderColor)),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: kAvatarRadius,
        child: kAvatarImage,
      ),
    );
  }
}
