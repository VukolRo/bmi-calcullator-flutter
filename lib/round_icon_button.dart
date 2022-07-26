import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.operation});

  final IconData? icon;
  final Function()? operation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: operation,
      fillColor: kPlusMinusButtonColor,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(
        side: BorderSide(color: kPlusMinusButtonColor),
      ),
    );
  }
}
