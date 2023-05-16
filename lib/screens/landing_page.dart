import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/widgets/desktop_view.dart';
import 'not_supported.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int noOfScreens = kNoOfScreens - 1;
  int currentScreen = 1;
  double? screenWidth;
  double? screenHeight;
  double? cWidth;
  ScrollController? scrollController;

  @override
  void dispose() {
//    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController!.addListener(onScroll);
  }

  onScroll() {
    setState(() {
      cWidth =
          scrollController!.offset * screenWidth! / (noOfScreens * screenHeight!);
      if (scrollController!.offset < screenHeight!) {
        currentScreen = 1;
      } else if (scrollController!.offset < 2 * screenHeight!) {
        currentScreen = 2;
      } else if (scrollController!.offset < 3 * screenHeight!) {
        currentScreen = 3;
      } else if (scrollController!.offset < 4 * screenHeight!) {
        currentScreen = 4;
      } else if (scrollController!.offset < 5 * screenHeight!) {
        currentScreen = 5;
      } else if (scrollController!.offset < 6 * screenHeight!) {
        currentScreen = 6;
      } else {
        currentScreen = 7;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: DesktopView(
          scrollController: scrollController,
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          cWidth: cWidth,
          currentScreen: currentScreen,
        ),
        tablet: DesktopView(
          scrollController: scrollController,
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          cWidth: cWidth,
          currentScreen: currentScreen,
        ),
        mobile: const NotSupported(),
      ),
    );
  }
}
