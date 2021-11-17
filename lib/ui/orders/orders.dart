import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/orders/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int? selectedIndex;

  @override
  void initState() {
    selectedIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: AppScale.scaledHeight(0.055, context),
            ),
            Center(
              child: SizedBox(
                child: Image.asset('assets/images/AVTOGEN.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: AppScale.scaledWidth(0.11, context),
                right: AppScale.scaledWidth(0.11, context),
                top: AppScale.scaledHeight(0.01, context),
                bottom: AppScale.scaledHeight(0.008, context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: ColorPalate.mainYellowColor,
                    thickness: 2,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          'assets/icons/arrow_back.svg',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Мои заказы',
                        style: FontStyles.boldStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                      ),
                      Container(),
                      PopupMenuButton(
                          icon: Container(
                            decoration: BoxDecoration(
                              color: ColorPalate.mainYellowColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          itemBuilder: (context) => <PopupMenuEntry>[
                                const PopupMenuItem(
                                  value: 1,
                                  child: Text("История заказов"),
                                ),
                                const PopupMenuItem(
                                  value: 2,
                                  child: Text("Текущие заказы"),
                                ),
                              ])
                      // GestureDetector(
                      //   child: Container(
                      //     padding: const EdgeInsets.symmetric(
                      //         horizontal: 16, vertical: 9),
                      //     decoration: BoxDecoration(
                      //       color: ColorPalate.mainYellowColor,
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: Icon(
                      //       Icons.more_vert,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  // SizedBox(
                  //   height: AppScale.scaledHeight(0.05, context),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 1;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 20, vertical: 8),
                  //         decoration: BoxDecoration(
                  //           color: selectedIndex == 1
                  //               ? ColorPalate.mainYellowColor
                  //               : null,
                  //           borderRadius: BorderRadius.circular(28),
                  //           border: Border.all(
                  //             color: ColorPalate.mainYellowColor,
                  //             width: 2,
                  //           ),
                  //         ),
                  //         child: Text(
                  //           'За сегодня',
                  //           style: FontStyles.semiBoldStyle(
                  //             fontSize: 14,
                  //             fontFamily: 'Montserrat',
                  //             color: selectedIndex == 1
                  //                 ? Colors.black
                  //                 : ColorPalate.mainYellowColor,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedIndex = 2;
                  //         });
                  //       },
                  //       child: Container(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 20, vertical: 8),
                  //         decoration: BoxDecoration(
                  //           color: selectedIndex == 2
                  //               ? ColorPalate.mainYellowColor
                  //               : null,
                  //           borderRadius: BorderRadius.circular(28),
                  //           border: Border.all(
                  //             color: ColorPalate.mainYellowColor,
                  //             width: 2,
                  //           ),
                  //         ),
                  //         child: Text(
                  //           'За неделю ',
                  //           style: FontStyles.semiBoldStyle(
                  //             fontSize: 14,
                  //             fontFamily: 'Montserrat',
                  //             color: selectedIndex == 2
                  //                 ? Colors.black
                  //                 : ColorPalate.mainYellowColor,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            // SizedBox(
            //   height: AppScale.scaledHeight(0.015, context),
            // ),
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 18,
                itemBuilder: (context, index) => const OrderItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
