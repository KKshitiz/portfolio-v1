import 'package:flutter/material.dart';
import 'package:flutterportfoliowebsite/device_info.dart';
import 'screens/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => DeviceInfo(context),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: LandingPage(),
      ),
    );
  }
}
