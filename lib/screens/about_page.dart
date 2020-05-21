import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    print(screenWidth);
    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //about heading
          Text(
            'About',
            textAlign: TextAlign.left,
            style: kMainHeading,
          ),
          //about text
          SizedBox(
            height: 20,
          ),
          Text(
            kAbout,
            textAlign: TextAlign.center,
            style: kSubHeading,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Image.asset('/images/mobiledev.png'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kJobTitle,
                          style: kMainHeading,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(kAboutIntro),
                        SizedBox(
                          height: 30,
                        ),
                        DetailRow(),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            kAboutExtra,
                            style: kNormalText,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  const DetailRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailCard(
              heading: 'Birthday',
              data: '9 Sep 2000',
            ),
            DetailCard(
              heading: 'Website',
              data: 'www.example.com',
            ),
            DetailCard(
              heading: 'Phone',
              data: '+91 8948239724',
            ),
            DetailCard(
              heading: 'City',
              data: 'Jaipur, RJ, India',
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailCard(
              heading: 'Age',
              data: '20',
            ),
            DetailCard(
              heading: 'Degree',
              data: 'B. Tech',
            ),
            DetailCard(
              heading: 'Email',
              data: 'skilite007@gmail.com',
            ),
            DetailCard(
              heading: 'Freelance',
              data: 'Available',
            ),
          ],
        ),
      ],
    );
  }
}

class DetailCard extends StatelessWidget {
  DetailCard({this.data, this.heading});
  final String heading;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
      child: Row(
        children: [
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
          Text(
            '$heading: ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            data,
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
