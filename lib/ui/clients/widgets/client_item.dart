// ignore_for_file: must_be_immutable

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ClientItem extends StatelessWidget {
  var imageList = [
    'assets/images/person4.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 2,
                ),
                SizedBox(height: AppScale.scaledHeight(0.005, context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      // height: 60,
                      height: AppScale.scaledHeight(0.07, context),
                      // width: 60,
                      width: AppScale.scaledWidth(0.2, context),
                      // color: Colors.red,
                      child: CircleAvatar(
                        backgroundColor: ColorPalate.mainBackgroundColor,
                        backgroundImage: AssetImage(imageList[index]),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'James Brown',
                          style: FontStyles.semiBoldStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          '+998977250000',
                          style: FontStyles.semiBoldStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '06/07/2021',
                          style: FontStyles.regularStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          '+14:15',
                          style: FontStyles.regularStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: AppScale.scaledHeight(0.005, context)),
              ],
            );
          }),
    );
  }
}
