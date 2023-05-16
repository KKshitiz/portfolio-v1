import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double? screenWidth;
  final double? screenHeight;

  @override
  Widget build(BuildContext context) {
    print(screenWidth);
    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
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
          const SizedBox(
            height: 20,
          ),
          Text(
            kAbout,
            textAlign: TextAlign.center,
            style: kSubHeading,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.network('$kAssetUrl/mobiledev.png'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kJobTitle,
                          style: kMainHeading,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          kAboutIntro,
                          style: kNormalText,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const DetailRow(),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetailCard(
              heading: 'Birthday',
              data: '9 Sep 2000',
            ),
            DetailCard(
              heading: 'College',
              data: 'NIT, Jaipur',
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
          children: const [
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
  const DetailCard({Key? key, this.data, this.heading}) : super(key: key);
  final String? heading;
  final String? data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
          Text(
            '$heading: ',
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            data!,
            style: const TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
