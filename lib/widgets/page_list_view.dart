import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/screens/contact_page.dart';
import 'package:flutterportfoliowebsite/screens/hobbies_page.dart';
import 'package:flutterportfoliowebsite/screens/intro_page.dart';
import 'package:flutterportfoliowebsite/screens/about_page.dart';
import 'package:flutterportfoliowebsite/screens/education_page.dart';
import 'package:flutterportfoliowebsite/screens/projects_page.dart';
import 'package:flutterportfoliowebsite/screens/resume_page.dart';

class PageListView extends StatelessWidget {
  const PageListView({
    Key key,
    @required this.scrollController,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final ScrollController scrollController;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      FirstPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      SecondPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      ProjectsPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      EducationPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      HobbiesPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      ResumePage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      ContactPage(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    ];

    return ListView(
      controller: scrollController,
      children: pages,
    );
  }
}
