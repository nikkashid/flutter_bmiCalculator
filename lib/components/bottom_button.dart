import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButtonWidget extends StatelessWidget {
  BottomButtonWidget({required this.onTap, required this.buttonText});

  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonText, style: kLargeButtonTextStyle),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: kBottomButtonMargin),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
