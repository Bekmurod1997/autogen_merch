import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      body: Column(
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
                      'Детали заявки ',
                      style: FontStyles.boldStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                      ),
                    ),
                    Container(),
                    // PopupMenuButton(
                    //     icon: Container(
                    //       decoration: BoxDecoration(
                    //         color: ColorPalate.mainYellowColor,
                    //         shape: BoxShape.circle,
                    //       ),
                    //       child: const Icon(
                    //         Icons.more_vert,
                    //         size: 30,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //     itemBuilder: (context) => <PopupMenuEntry>[
                    //           const PopupMenuItem(
                    //             value: 1,
                    //             child: Text("История заказов"),
                    //           ),
                    //           const PopupMenuItem(
                    //             value: 2,
                    //             child: Text("Текущие заказы"),
                    //           ),
                    //         ])
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                          image: DecorationImage(
                              image: AssetImage('assets/images/person4.png'))),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Камиль Ильдаров',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '+99897726489',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Divider(
                  color: ColorPalate.mainYellowColor,
                  thickness: 3,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Дата посещения',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '03.12.2019',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      '16:35',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                    // SvgPicture.asset(
                    //   'assets/icons/car_s.svg',
                    //   color: ColorPalate.mainYellowColor,
                    // )
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: ColorPalate.mainYellowColor,
                  thickness: 3,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Тип автомобиля',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'легковой ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/car_s.svg',
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: ColorPalate.mainYellowColor,
                  thickness: 3,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Тип  мойки ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Бесконтактная мойка кузова автомобиля, коврики пороги ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Divider(
                  color: ColorPalate.mainYellowColor,
                  thickness: 3,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Цена  услугу',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '40 000 сум ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 10),
                Divider(
                  color: ColorPalate.mainYellowColor,
                  thickness: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
