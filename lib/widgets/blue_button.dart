import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  BlueButton({this.onTap, this.text});
  final Function onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onTap,
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        textColor: Colors.white,
        color: Colors.blue[700],
        child: Text(text));
  }
}
