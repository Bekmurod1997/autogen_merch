// ignore_for_file: must_be_immutable

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:flutter/material.dart';

class MostVisited extends StatelessWidget {
  var imageAssets = [
    'assets/images/cafe3.jpeg',
    'assets/images/cafe4.jpeg',
    'assets/images/cafe3.jpeg',
    'assets/images/cafe4.jpeg',
    'assets/images/cafe4.jpeg',
    'assets/images/cafe3.jpeg',
    'assets/images/cafe4.jpeg',
    'assets/images/cafe3.jpeg',
    'assets/images/cafe3.jpeg',
    'assets/images/cafe4.jpeg',
  ];

  MostVisited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppScale.scaledHeight(0.2, context),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageAssets.length,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(
                  left: index == 0
                      ? AppScale.scaledWidth(0.05, context)
                      : AppScale.scaledWidth(0.05, context),
                ),
                // height: AppScale.scaledHeight(0.3, context),
                width: AppScale.scaledWidth(0.6, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Image.asset(
                  imageAssets[index],
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
