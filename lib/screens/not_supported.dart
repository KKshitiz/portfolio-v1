import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class NotSupported extends StatelessWidget {
  const NotSupported({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Text(
          'Please switch to desktop to view. \nMobile version coming soon!',
          textAlign: TextAlign.center,
          style: kMainHeading,
        ),
      ),
    );
  }
}
