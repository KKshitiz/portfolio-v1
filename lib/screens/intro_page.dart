import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double? screenHeight;
  final double? screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      alignment: Alignment.center,
//      padding: EdgeInsets.all(70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 4,
            child: Image.network('$kAssetUrl/job.png'),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Hi, I\'m $kAvatarName',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
