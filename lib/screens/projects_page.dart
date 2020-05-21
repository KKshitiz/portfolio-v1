import 'dart:ui';
import 'package:flutterportfoliowebsite/services/launch_url.dart';
import 'package:flutterportfoliowebsite/widgets/blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: screenHeight,
      width: screenWidth,
      child: Column(
        children: [
          Text(
            'Projects',
            style: kMainHeading,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Show me your projects and I\'ll tell you what type of programmer you are',
            style: kSubHeading,
          ),
          SizedBox(
            height: 30,
          ),
          BlueButton(
            text: 'GitHub',
            onTap: () {
              launchUrlBrowser('https://www.github.com/KKshitiz');
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(children: [
                  ProjectCard(
                    projectTitle: 'Algorithm Visualizer',
                    projectDescription:
                        'Desktop GUI application made in Python3 capable of generating animations to visualize various searching and sorting algorithms using Tkinter library. ',
                    url: 'https://kkshitiz.github.io/Algorithm-Visualizer/',
                  ),
                  ProjectCard(
                    projectTitle: 'Corona-scraper',
                    projectDescription:
                        'Web scraping based live monitoring tool useful for vigilants and medical staffs which is capable of tracking the COVID-19 global pandemic.',
                    url: 'https://kkshitiz.github.io/Corona-Scraper/',
                  ),
                  ProjectCard(
                    projectTitle: 'Serial Clicker',
                    projectDescription:
                        'Serial Clicker is a notorious auto clicker application created in python3 using the PyAutoGui and tkinter library.',
                    url: 'https://kkshitiz.github.io/Serial-clicker/',
                  ),
                ]),
                Row(children: [
                  ProjectCard(
                    projectTitle: 'Actroid',
                    projectDescription: 'Smart Animatronic face ',
                    url: 'https://github.com/KKshitiz/Actroid2.0',
                  ),
                  ProjectCard(
                    projectTitle: 'J.A.R.V.I.S',
                    projectDescription:
                        'Iron Man inspired personal virtual assistant made in Python3',
                    url: 'https://kkshitiz.github.io/J.A.R.V.I.S/',
                  ),
                  ProjectCard(
                    projectTitle: 'hello',
                    projectDescription:
                        'fslfjaljflksdf sdfjslkfjalfd kfdsjfksljf',
                    url: null,
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  ProjectCard({this.projectTitle, this.url, this.projectDescription});
  final projectTitle;
  final projectDescription;
  final url;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.2, 1.0),
                blurRadius: 20,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              projectTitle,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              projectDescription,
              style: kNormalText,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                launchUrlBrowser(url);
              },
              child: Text(
                'See project',
                style: TextStyle(color: Colors.blue[700], fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
