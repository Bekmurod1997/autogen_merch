// ignore_for_file: use_key_in_widget_constructors

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMedias extends StatelessWidget {
  final String iconUrl;
  final VoidCallback onpress;
  // ignore: prefer_const_constructors_in_immutables
  SocialMedias({required this.iconUrl, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: SizedBox(
        height: AppScale.scaledHeight(0.06, context),
        width: AppScale.scaledWidth(0.08, context),
        child: SvgPicture.asset(iconUrl),
      ),
    );
  }
}
