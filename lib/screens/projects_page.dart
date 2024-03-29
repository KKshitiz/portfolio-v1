import 'package:flutterportfoliowebsite/services/launch_url.dart';
import 'package:flutterportfoliowebsite/widgets/blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double? screenWidth;
  final double? screenHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: screenHeight,
      width: screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Projects',
            style: kMainHeading,
          ),
          Text(
            'Things I\'ve previously worked upon.',
            style: kSubHeading,
          ),
          BlueButton(
            text: 'GitHub',
            onTap: () {
              launchUrlBrowser('https://www.github.com/KKshitiz');
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(children: const [
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
                Row(children: const [
                  ProjectCard(
                    projectTitle: 'Actroid',
                    projectDescription:
                        'Smart Animatronic face packed with Computer Vision and NLP capabilities.',
                    url: 'https://github.com/KKshitiz/Actroid2.0',
                  ),
                  ProjectCard(
                    projectTitle: 'J.A.R.V.I.S',
                    projectDescription:
                        'Iron Man inspired personal virtual assistant made in Python3',
                    url: 'https://kkshitiz.github.io/J.A.R.V.I.S/',
                  ),
                  ProjectCard(
                    projectTitle: 'Flash-Chat',
                    projectDescription:
                        'A group chat app made in flutter. It is powered by firebase as backend and uses the firestore cloud API',
                    url: 'https://github.com/KKshitiz/Flash-Chat-Flutter',
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
