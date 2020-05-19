import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class ScrollableScreen extends StatefulWidget {
  @override
  _ScrollableScreenState createState() => _ScrollableScreenState();
}

class _ScrollableScreenState extends State<ScrollableScreen> {
  @override
  Widget build(BuildContext context) {
    double kScreenWidth = MediaQuery.of(context).size.width;
    double kScreenHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kAvatarName,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'I\'m a ',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  TypewriterAnimatedTextKit(
                    speed: Duration(milliseconds: 200),
                    text: kProfession,
                    totalRepeatCount: 1,
                    textStyle: TextStyle(
                        decorationStyle: TextDecorationStyle.dashed,
                        fontSize: 40,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
