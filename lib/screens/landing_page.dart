import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

ScrollController scrollController;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int noOfScreens = 5 - 1;
  double screenWidth;
  double screenHeight;
  double cWidth;
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
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kAvatarName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I\'m a ',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              TypewriterAnimatedTextKit(
                                speed: Duration(milliseconds: 200),
                                text: kProfession,
                                totalRepeatCount: 1,
                                textStyle: TextStyle(
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 40,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kAvatarName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I\'m a ',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              TypewriterAnimatedTextKit(
                                speed: Duration(milliseconds: 200),
                                text: kProfession,
                                totalRepeatCount: 1,
                                textStyle: TextStyle(
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 40,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kAvatarName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I\'m a ',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              TypewriterAnimatedTextKit(
                                speed: Duration(milliseconds: 200),
                                text: kProfession,
                                totalRepeatCount: 1,
                                textStyle: TextStyle(
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 40,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kAvatarName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I\'m a ',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              TypewriterAnimatedTextKit(
                                speed: Duration(milliseconds: 200),
                                text: kProfession,
                                totalRepeatCount: 1,
                                textStyle: TextStyle(
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 40,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kAvatarName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'I\'m a ',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              TypewriterAnimatedTextKit(
                                speed: Duration(milliseconds: 200),
                                text: kProfession,
                                totalRepeatCount: 1,
                                textStyle: TextStyle(
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 40,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: 8,
              width: cWidth,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
