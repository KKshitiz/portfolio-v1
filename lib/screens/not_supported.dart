import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class NotSupported extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Text(
          'Please switch to desktop to view. \nMobile version coming soon!',
          textAlign: TextAlign.center,
          style: kMainHeading,
        ),
      ),
    );
  }
}
