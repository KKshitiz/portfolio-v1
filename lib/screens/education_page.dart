import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double? screenWidth;
  final double? screenHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Education',
            style: kMainHeading,
          ),
          Text(
            'My academic life, in a nutshell.',
            style: kSubHeading,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    EducationTile(
                      mainText: 'B.Tech, NIT Jaipur',
                      subText:
                          '2nd year, 8.9 CGPA\nMember at ZINE Robotics and Research',
                    ),
                    EducationTile(
                      mainText: 'ISC, Little Flower School',
                      subText: '2018, 97.5% in science stream',
                    ),
                    EducationTile(
                      mainText: 'ICSE, Little Flower School',
                      subText: '2016, 95% in science stream',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Image.network('$kAssetUrl/graduation.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class EducationTile extends StatelessWidget {
  final String? mainText;
  final String? subText;
  EducationTile({this.mainText, this.subText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Text(
            subText!,
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
