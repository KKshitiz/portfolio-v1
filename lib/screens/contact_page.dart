import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/services/launch_url.dart';
import 'package:flutterportfoliowebsite/widgets/blue_button.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
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
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
      child: Column(
        children: [
          Text(
            'Contact Me',
            style: kMainHeading,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image.network('$kAssetUrl/contact.png'),
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
                    const SizedBox(
                      height: 40,
                    ),
                    BlueButton(
                      onTap: () {
                        createEmail();
                      },
                      text: 'Contact Me',
                    )
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
