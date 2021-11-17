import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/ui/auth/login.dart';
import 'package:autogen_merch/ui/landing/widgets/landing_one.dart';
import 'package:autogen_merch/ui/landing/widgets/landing_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorPalate.mainBackgroundColor,
      body: Stack(
        children: [
          Center(
            child: PageView(
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              children: [
                LandingOne(),
                const LandingTwo(),
                const LandingTwo(),
                const Login(),
              ],
            ),
          ),
          currentPage != 3
              ? Positioned(
                  bottom: AppScale.scaledHeight(0.05, context),
                  left: AppScale.scaledWidth(0.05, context),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: List.generate(
                        3,
                        (index) => buildDots(index: index),
                      ),
                    ),
                  ),
                )
              : Container(),
          currentPage != 3
              ? Positioned(
                  bottom: AppScale.scaledHeight(0.02, context),
                  right: AppScale.scaledWidth(0.05, context),
                  child: GestureDetector(
                    onTap: () => _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    ),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      // color: Colors.red,
                      child: SvgPicture.asset(
                        'assets/icons/right-arrow.svg',
                        height: 50,
                        width: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Container buildDots({int? index}) {
    int curPage = currentPage;
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: curPage == index ? 25 : 10.0,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: curPage == index
            ? BorderRadius.circular(6.0)
            : BorderRadius.circular(10.0),
        color: curPage == index ? ColorPalate.mainYellowColor : Colors.white,
      ),
    );
  }
}
