import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/widgets/blue_button.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        children: [
          Text(
            'Resume',
            style: kMainHeading,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      kResumeText,
                      textAlign: TextAlign.center,
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    BlueButton(
                      onTap: () {},
                      text: 'Download',
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
//                  padding: EdgeInsets.all(30),
                  child: Image.asset(
                    'images/resume.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
