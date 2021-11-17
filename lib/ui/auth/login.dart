import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/ui/auth/bundle_id.dart';
import 'package:autogen_merch/ui/auth/verify_number.dart';
import 'package:autogen_merch/ui/auth/widgets/auth_textformfile.dart';
import 'package:autogen_merch/ui/auth/widgets/login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppScale.scaledHeight(0.08, context),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Image.asset(
            'assets/images/AVTOGEN.png',
            fit: BoxFit.contain,
            height: AppScale.scaledHeight(0.05, context),
            width: AppScale.scaledWidth(0.5, context),
          ),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.05, context),
        ),
        AuthTextFromField(
          second: false,
          iconUrl: 'assets/icons/Groupname.svg',
          hintText: 'имя',
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.025, context),
        ),
        AuthTextFromField(
          second: true,
          iconUrl: 'assets/icons/Groupphone.svg',
          hintText: 'номер телефона ',
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.07, context),
        ),
        Image.asset('assets/images/fire_circle.png'),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ignore: avoid_print
              LoginButtons(
                title: 'Пропустить',
                onpress: () => Get.to(() => const BundleIdScreen()),
                buttonBackground: ColorPalate.mainBackgroundColor,
              ),
              LoginButtons(
                title: 'Продолжить',
                onpress: () => Get.to(() => const VerifyNumberScreen()),
                buttonBackground: ColorPalate.mainYellowColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppScale.scaledHeight(0.05, context),
        ),
      ],
    );
  }
}
