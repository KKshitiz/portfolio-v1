import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'sidebar.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'first_page.dart';
import 'second_page.dart';

ScrollController scrollController;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int noOfScreens = kNoOfScreens - 1;
  double screenWidth;
  double screenHeight;
  double cWidth;
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(onScroll);
  }

  onScroll() {
    setState(() {
      cWidth =
          scrollController.offset * screenWidth / (noOfScreens * screenHeight);
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 4,
                child: ListView(
                  controller: scrollController,
                  children: [
                    FirstPage(
                        screenHeight: screenHeight, screenWidth: screenWidth),
                    SecondPage(
                        screenHeight: screenHeight, screenWidth: screenWidth),
                  ],
                ),
              ),
            ],
          ),
          //progress bar indicator
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: 8,
              width: cWidth,
              color: Colors.blue,
            ),
          ),
          //rotating indicator
          Positioned(
            right: 20,
            bottom: 20,
            child: AnimatedBuilder(
              animation: scrollController,
              child: Container(
                width: 200.0,
                height: 200.0,
                child: const Center(
                  child: Image(image: AssetImage('/images/rotatingimage.png')),
                ),
              ),
              builder: (BuildContext context, Widget child) {
                return Transform.rotate(
                  angle: scrollController.offset / screenWidth * 2.0 * pi,
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
