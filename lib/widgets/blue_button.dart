import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({Key? key, this.onTap, this.text}) : super(key: key);
  final Function? onTap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap as void Function()?,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        textStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[700],
      ),
      child: Text(text!),
    );
  }
}
