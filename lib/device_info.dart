import 'package:flutter/material.dart';

class DeviceInfo {
  double? width;
  double? height;
  DeviceInfo(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
