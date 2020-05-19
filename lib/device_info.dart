import 'package:flutter/material.dart';

class DeviceInfo {
  double width;
  double height;
  DeviceInfo(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;
  }
}
