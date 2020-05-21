import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterportfoliowebsite/services/launch_url.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
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
            'Contact Me',
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
                child: Image.asset(
                  'images/contact.png',
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      kContactText,
                      textAlign: TextAlign.center,
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    FlatButton(
                        onPressed: () {
                          createEmail();
                        },
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Contact Me'))
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
