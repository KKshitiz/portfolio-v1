import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({
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
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hobbies',
            style: kMainHeading,
          ),
          Text(
            kHobbiesText,
            style: kSubHeading,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Image.network('$kAssetUrl/hobbies.png'),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HobbieContainer(
                      label: 'Playing Sudoku',
                      icon: FontAwesomeIcons.cube,
                    ),
                    HobbieContainer(
                      label: 'Reading Books',
                      icon: FontAwesomeIcons.book,
                    ),
                    HobbieContainer(
                      label: 'Finance and Business',
                      icon: FontAwesomeIcons.briefcase,
                    ),
                    HobbieContainer(
                      label: 'Designing',
                      icon: FontAwesomeIcons.paintBrush,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HobbieContainer extends StatelessWidget {
  final String label;
  final IconData icon;
  HobbieContainer({this.label, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
//      alignment: Alignment.centerRight,
//      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.blue[700],
          ),
          Container(
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[200],
                    offset: Offset(0.2, 1.0),
                    blurRadius: 15,
                  ),
                ]),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
