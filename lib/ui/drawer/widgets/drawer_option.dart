// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  // ignore: use_key_in_widget_constructors
  DrawerOption({required this.title, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppScale.scaledWidth(0.08, context),
        bottom: AppScale.scaledHeight(0.007, context),
      ),
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        onTap: onpress,
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: FontStyles.mediumStyle(
            fontSize: 18,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
