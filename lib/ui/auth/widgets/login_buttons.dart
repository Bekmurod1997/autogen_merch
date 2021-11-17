// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  final Color buttonBackground;

  LoginButtons(
      {Key? key,
      required this.title,
      required this.onpress,
      required this.buttonBackground})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: AppScale.scaledWidth(0.4, context),
        height: AppScale.scaledHeight(0.055, context),
        decoration: BoxDecoration(
          color: buttonBackground,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: ColorPalate.mainYellowColor,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: FontStyles.mediumStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
