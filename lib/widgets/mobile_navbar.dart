import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/widgets/avatar_widget.dart';

class NavbarMobile extends StatelessWidget {
  const NavbarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(20),
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          Avatar(
            radius: 20,
          ),
        ],
      ),
    );
  }
}
