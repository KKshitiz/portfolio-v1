import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  BlueButton({this.onTap, this.text});
  final Function? onTap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap as void Function()?,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        textStyle: TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[700],
      ),
      child: Text(text!),
    );
  }
}
