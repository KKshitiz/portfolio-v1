import 'package:flutter/material.dart';
import 'sidebar.dart';

class DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SideBar(),
    );
  }
}
