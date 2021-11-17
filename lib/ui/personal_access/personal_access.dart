import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/drawer/custom_drawer.dart';
import 'package:autogen_merch/ui/personal_access/widgets/latest_shop.dart';
import 'package:autogen_merch/ui/personal_access/widgets/most_visited.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class PersonalAccessScreen extends StatefulWidget {
  @override
  _PersonalAccessScreenState createState() => _PersonalAccessScreenState();
}

class _PersonalAccessScreenState extends State<PersonalAccessScreen> {
  late GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorPalate.mainBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppScale.scaledHeight(0.055, context),
          ),
          Center(
            child: SizedBox(
              height: AppScale.scaledHeight(0.05, context),
              child: Image.asset(
                'assets/images/AVTOGEN.png',
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.01, context),
          ),
          Container(
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
                        onTap: () => scaffoldKey.currentState?.openDrawer(),
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
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.02, context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context),
            ),
            child: Text(
              'Новые барбершопы',
              style: FontStyles.regularStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.015, context),
          ),
          LatestShops(),
          SizedBox(
            height: AppScale.scaledHeight(0.025, context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppScale.scaledWidth(0.05, context),
            ),
            child: Text(
              'Больше посещенных',
              style: FontStyles.regularStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: AppScale.scaledHeight(0.025, context),
          ),
          MostVisited(),
        ],
      ),
      drawer: const CustomDrawer(),
    );
  }
}
