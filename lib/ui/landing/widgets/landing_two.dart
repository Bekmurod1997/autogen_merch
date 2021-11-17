import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:flutter/material.dart';

class LandingTwo extends StatefulWidget {
  const LandingTwo({Key? key}) : super(key: key);

  @override
  _LandingTwoState createState() => _LandingTwoState();
}

class _LandingTwoState extends State<LandingTwo> {
  bool isAnimated = false;
  bool isContainerApp = false;
  bool isChair = false;
  @override
  void initState() {
    // isAnimated = true;
    // timerS();
    timerInitial();
    super.initState();
  }

  void timerInitial() {
    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      setState(() {
        setState(() {
          isContainerApp = true;
          isChair = true;
        });
      });
      timerS();
    });
  }

  void timerS() {
    Future.delayed(const Duration(microseconds: 100)).then((value) {
      setState(() {
        isAnimated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          bottom: isAnimated ? AppScale.scaledHeight(0.4, context) : 0,
          right: 0,
          child: isContainerApp
              ? Container(
                  height: AppScale.scaledHeight(0.6, context),
                  width: AppScale.scaledWidth(.55, context),
                  decoration: BoxDecoration(
                    color: ColorPalate.mainYellowColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                )
              : Container(),
          duration: const Duration(milliseconds: 600),
        ),

        Column(
          children: [
            SizedBox(
              height: AppScale.scaledHeight(0.10, context),
            ),
            Center(
              child: AnimatedOpacity(
                opacity: isContainerApp ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: AppScale.scaledWidth(0.70, context),
                  height: AppScale.scaledHeight(.40, context),
                  child: Image.asset(
                    'assets/images/chair.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: AppScale.scaledHeight(0.12, context),
            ),

            SizedBox(
              height: AppScale.scaledHeight(0.05, context),
            ),
            // Center(
            //   child: Image.asset(
            //     'assets/images/auto_logo.png',
            //     height: AppScale.scaledHeight(
            //       0.20,
            //       context,
            //     ),
            //     width: AppScale.scaledWidth(0.50, context),
            //   ),
            // ),
          ],
        ),
        AnimatedPositioned(
          top: isAnimated
              ? AppScale.scaledHeight(0.69, context)
              : AppScale.scaledHeight(0.25, context),
          left: isAnimated ? 0 : AppScale.scaledWidth(03, context),
          right: isAnimated ? 0 : AppScale.scaledWidth(03, context),
          child: Center(
            child: Image.asset(
              'assets/images/auto_logo.png',
              height: AppScale.scaledHeight(
                0.20,
                context,
              ),
              width: AppScale.scaledWidth(0.50, context),
            ),
          ),
          duration: const Duration(milliseconds: 600),
        ),
        // Positioned(
        //   top: AppScale.scaledHeight(
        //     0.25,
        //     context,
        //   ),
        //   // top: AppScale.scaledHeight(
        //   //   0.69,
        //   //   context,
        //   // ),
        //   left: 0,
        //   right: 0,
        //   // left: AppScale.scaledWidth(03, context),
        //   // right: AppScale.scaledWidth(03, context),
        //   child: Center(
        //     child: Image.asset(
        //       'assets/images/auto_logo.png',
        //       height: AppScale.scaledHeight(
        //         0.20,
        //         context,
        //       ),
        //       width: AppScale.scaledWidth(0.50, context),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
