import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({
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
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
      child: Column(
        children: [
          Text(
            'Education',
            style: kMainHeading,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'My academic life',
            style: kSubHeading,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
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
                  child: Image.network(
                      'https://github.com/KKshitiz/flutter-website/blob/gh-pages/assets/assets/images/graduation.png'),
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
  final String mainText;
  final String subText;
  EducationTile({this.mainText, this.subText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Text(
            subText,
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
