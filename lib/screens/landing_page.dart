import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutterportfoliowebsite/constants.dart';
import 'package:flutterportfoliowebsite/widgets/desktop_view.dart';
import 'not_supported.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int noOfScreens = kNoOfScreens - 1;
  double screenWidth;
  double screenHeight;
  double cWidth;
  ScrollController scrollController;

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
      body: ScreenTypeLayout(
        desktop: DesktopView(
            scrollController: scrollController,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            cWidth: cWidth),
        tablet: NotSupported(),
        mobile: NotSupported(),
      ),
    );
  }
}
