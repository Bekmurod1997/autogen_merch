// ignore_for_file: use_key_in_widget_constructors

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HamburgerAndSearch extends StatefulWidget {
  @override
  _HamburgerAndSearchState createState() => _HamburgerAndSearchState();
}

class _HamburgerAndSearchState extends State<HamburgerAndSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScale.scaledHeight(0.06, context),
      color: ColorPalate.mainYellowColor,
      padding: EdgeInsets.symmetric(
        horizontal: AppScale.scaledWidth(0.1, context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/hamburger.svg')),
              SizedBox(
                width: AppScale.scaledWidth(0.08, context),
              ),
              Text(
                'Barbershop',
                style: FontStyles.regularStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
