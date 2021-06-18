import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.bgColor, this.cardChild, this.onPress);

  final Color bgColor;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
