import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
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
      color: Colors.white,
      child: Stack(children: [
        Center(child: Image.asset('/images/job.png')),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(130.0),
              child: Text(
                kAvatarName,
                style: TextStyle(
                  fontSize: 50,
                  color: Color(0xff7d6165),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
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
            ),
          ],
        ),
      ]),
    );
  }
}
