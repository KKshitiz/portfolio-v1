import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Colors.green,
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
    );
  }
}
