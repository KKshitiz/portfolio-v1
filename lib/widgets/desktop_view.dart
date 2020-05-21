import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/widgets/page_list_view.dart';
import 'package:flutterportfoliowebsite/widgets/scroll_progress_bar.dart';
import 'rotating_scroll_image.dart';
import 'sidebar.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key key,
    @required this.scrollController,
    @required this.screenHeight,
    @required this.screenWidth,
    @required this.cWidth,
    @required this.currentScreen,
  }) : super(key: key);

  final ScrollController scrollController;
  final double screenHeight;
  final double screenWidth;
  final double cWidth;
  final int currentScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: SideBar(currentScreen),
            ),
            Expanded(
              flex: 4,
              child: PageListView(
                  scrollController: scrollController,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth),
            ),
          ],
        ),
        //progress bar indicator
        ScrollProgressBar(cWidth: cWidth),
        //rotating indicator
        RotatingImage(
            scrollController: scrollController, screenWidth: screenWidth),
      ],
    );
  }
}
