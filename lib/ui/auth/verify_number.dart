import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/time_table/time_table.dart';
// import 'package:autogen_merch/ui/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyNumberScreen extends StatefulWidget {
  const VerifyNumberScreen({Key? key}) : super(key: key);

  @override
  _VerifyNumberScreenState createState() => _VerifyNumberScreenState();
}

class _VerifyNumberScreenState extends State<VerifyNumberScreen> {
  String currentText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorPalate.mainBackgroundColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            // color: Colors.green,
            width: 10,
            height: 10,
            margin: EdgeInsets.only(left: AppScale.scaledWidth(0.02, context)),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              color: ColorPalate.mainYellowColor,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context),
            ),
            child: Text(
              'verify'.tr,
              style: FontStyles.semiBoldStyle(
                fontSize: 40,
                fontFamily: 'Lato',
                color: ColorPalate.mainYellowColor,
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.02, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context),
            ),
            child: Text(
              'Мы отправили одноразовый пароль на ваш номер',
              style: FontStyles.semiBoldStyle(
                fontSize: 14,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context),
            ),
            child: Text(
              ' +998977250000',
              style: FontStyles.semiBoldStyle(
                fontSize: 14,
                fontFamily: 'Lato',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.04, context),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.2, context),
            ),
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.white),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                keyboardAppearance: Brightness.dark,
                pastedTextStyle: const TextStyle(
                  // color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: ColorPalate.mainYellowColor,
                pinTheme: PinTheme(
                  selectedFillColor: Colors.purple,
                  selectedColor: ColorPalate.mainYellowColor,
                  inactiveColor: ColorPalate.inputColor,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: AppScale.scaledHeight(0.07, context),
                  fieldWidth: AppScale.scaledWidth(0.11, context),
                  activeFillColor: Colors.red,
                ),
                appContext: context,
                length: 4,
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),
          ),
          const Spacer(),
          currentText.length == 4
              ? GestureDetector(
                  onTap: () => Get.to(() => const TimeTableScreen()),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppScale.scaledWidth(0.09, context)),
                    height: AppScale.scaledHeight(0.08, context),
                    decoration: BoxDecoration(
                      color: ColorPalate.mainYellowColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Дальше',
                        style: FontStyles.boldStyle(
                          fontSize: 20,
                          fontFamily: 'Lato',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: AppScale.scaledHeight(0.1, context),
          ),
        ],
      ),
    );
  }
}
