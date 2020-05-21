import 'package:flutter/material.dart';
import 'scroll_progress_bar.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key key,
    @required this.scrollController,
    @required this.screenHeight,
    @required this.screenWidth,
    @required this.cWidth,
  }) : super(key: key);

  final ScrollController scrollController;
  final double screenHeight;
  final double screenWidth;
  final double cWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //progress bar indicator
        ScrollProgressBar(cWidth: cWidth),
      ],
    );
  }
}
