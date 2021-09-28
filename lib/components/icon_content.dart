import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icons, this.label});

  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
