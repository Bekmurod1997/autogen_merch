import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/time_table/time_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BundleIdScreen extends StatefulWidget {
  const BundleIdScreen({Key? key}) : super(key: key);

  @override
  _BundleIdScreenState createState() => _BundleIdScreenState();
}

class _BundleIdScreenState extends State<BundleIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppScale.scaledHeight(0.25, context),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppScale.scaledWidth(0.06, context),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: AppScale.scaledWidth(0.2, context),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39),
                  border: Border.all(
                    color: ColorPalate.mainYellowColor,
                    width: 3.0,
                  ),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Введите ID',
                      hintStyle: FontStyles.regularStyle(
                          fontSize: 18,
                          fontFamily: 'Lato',
                          color: Colors.white54)),
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.13, context),
              ),
              Center(
                child: Image.asset('assets/images/fire_circle.png'),
              ),
            ],
          ),
          Positioned(
              top: AppScale.scaledHeight(0.35, context),
              right: AppScale.scaledWidth(0.2, context),
              child: GestureDetector(
                onTap: () => Get.to(() => const TimeTableScreen()),
                child: SvgPicture.asset(
                  'assets/icons/verify.svg',
                ),
              ))
        ],
      ),
    );
  }
}
