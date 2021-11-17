import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/clients/clients.dart';
import 'package:autogen_merch/ui/drawer/tuitorial.dart';
import 'package:autogen_merch/ui/orders/orders.dart';
import 'package:autogen_merch/ui/statistics/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widgets/drawer_option.dart';
import 'widgets/social_medias.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.62,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: Container(
          color: ColorPalate.mainYellowColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppScale.scaledHeight(0.08, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.04, context),
                  right: AppScale.scaledWidth(0.03, context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: SizedBox(
                        width: AppScale.scaledWidth(0.05, context),
                        height: AppScale.scaledHeight(0.025, context),
                        child: SvgPicture.asset('assets/icons/x.svg'),
                      ),
                    ),
                    SizedBox(
                      width: AppScale.scaledWidth(0.45, context),
                      height: AppScale.scaledHeight(0.025, context),
                      child: SvgPicture.asset('assets/icons/avtogen_b.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.05, context),
              ),
              DrawerOption(
                title: 'Главная',
                onpress: () {},
              ),
              DrawerOption(
                title: 'Мои заказы',
                onpress: () => Get.to(
                  () => const MyOrders(),
                ),
              ),
              DrawerOption(
                title: 'Статистика',
                onpress: () => Get.to(
                  () => const StatisticsScreen(),
                ),
              ),
              DrawerOption(
                  title: 'Клиенты',
                  onpress: () => Get.to(() => const Clients())),
              DrawerOption(
                title: 'Настройки',
                onpress: () {},
              ),
              DrawerOption(
                title: 'Выход',
                onpress: () {},
              ),
              // DrawerOption(
              //   title: 'For TUitorial',
              //   onpress: () {
              //     Get.to(() => const Tutorial());
              //   },
              // ),
              SizedBox(
                height: AppScale.scaledHeight(0.15, context),
              ),
              const Spacer(),
              // Container(
              //   // color: Colors.red,
              //   height: AppScale.scaledHeight(.25, context),
              //   width: AppScale.scaledWidth(100, context),
              //   child: Image.asset(
              //     'assets/images/02.png',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              SizedBox(
                height: AppScale.scaledHeight(0.1, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                ),
                child: Text(
                  '+99897009070',
                  style: FontStyles.semiBoldStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.007, context),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                ),
                child: Text(
                  '+998977254747',
                  style: FontStyles.semiBoldStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.021, context),
              ),
              Container(
                height: AppScale.scaledHeight(0.06, context),
                padding: EdgeInsets.only(
                  left: AppScale.scaledWidth(0.042, context),
                  right: AppScale.scaledWidth(0.042, context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialMedias(
                        iconUrl: 'assets/icons/facebook.svg',
                        // ignore: avoid_print
                        onpress: () => print('f')),
                    SocialMedias(
                        iconUrl: 'assets/icons/instagram.svg',
                        // ignore: avoid_print
                        onpress: () => print('i')),
                    SocialMedias(
                        iconUrl: 'assets/icons/telegram.svg',
                        // ignore: avoid_print
                        onpress: () => print('t')),
                    SocialMedias(
                        iconUrl: 'assets/icons/email.svg',
                        // ignore: avoid_print
                        onpress: () => print('e')),
                  ],
                ),
              ),
              SizedBox(
                height: AppScale.scaledHeight(0.02, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
