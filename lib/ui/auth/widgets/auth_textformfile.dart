// ignore_for_file: must_be_immutable

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextFromField extends StatelessWidget {
  final String iconUrl;
  final String hintText;
  bool second = false;
  AuthTextFromField({
    Key? key,
    required this.iconUrl,
    required this.hintText,
    required this.second,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: AppScale.scaledWidth(0.09, context)),
      height: AppScale.scaledHeight(0.08, context),
      decoration: BoxDecoration(
        color: ColorPalate.mainYellowColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppScale.scaledWidth(0.06, context),
            ),
            child: SvgPicture.asset(
              iconUrl,
              height: AppScale.scaledHeight(
                  second == true ? 0.038 : 0.026, context),
            ),
          ),
          SizedBox(
            width: AppScale.scaledWidth(0.03, context),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 25),
            // ignore: prefer_const_constructors
            child: VerticalDivider(
              color: Colors.white30,
              thickness: 1,
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: AppScale.scaledWidth(0.60, context),
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: FontStyles.mediumStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white38,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
