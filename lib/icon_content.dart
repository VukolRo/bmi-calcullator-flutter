import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.textContent, required this.iconContent});

  final String textContent;
  final IconData iconContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 75.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
