import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/clients/widgets/client_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Clients extends StatelessWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppScale.scaledHeight(0.06, context)),
        child: AppBar(
          backgroundColor: ColorPalate.mainYellowColor,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: SvgPicture.asset(
                'assets/icons/arrow_back.svg',
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            'Клиенты',
            style: FontStyles.boldStyle(
              fontSize: 24,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: AppScale.scaledHeight(0.02, context),
            ),
            Center(
              child: Text(
                '15 клиентов были в Трумэне',
                style: FontStyles.boldStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: AppScale.scaledHeight(0.02, context),
            ),
            ClientItem(),
          ],
        ),
      ),
    );
  }
}
