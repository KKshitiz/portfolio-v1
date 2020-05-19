import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'scrollable_screen.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
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
                child: ScrollableScreen(),
              ),
            ],
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: 8,
              width: 50,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
