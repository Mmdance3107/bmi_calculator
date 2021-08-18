import 'package:flutter/material.dart';
import 'constants.dart';

class NavigationWidget extends StatelessWidget {
  final String textValue;
  final Function ()onTap;
  NavigationWidget({required this.textValue, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(textValue,
            style: kLargeButtonTextStyle,),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}