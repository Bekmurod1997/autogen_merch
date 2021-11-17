import 'package:autogen_merch/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

void futureOrderDialog(BuildContext context, String clientName) {
  showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            AlertDialog(
              backgroundColor: Colors.black54,
              insetPadding: EdgeInsets.all(10),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  side: BorderSide(
                    color: Color(0xff474747),
                  )),
              content: Builder(builder: (context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(clientName,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24)),
                          const SizedBox(height: 15),
                          const Text('Black Star Car Wash',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          const SizedBox(height: 15),
                          const Text(
                            'ул. Лабзак, 12/1, Tashkent',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/location.svg'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'ул. Лабзак, 12/1, Tashkent',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/wife.svg'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'wife',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/calendar.svg'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Пн-Сб с 9:30 до 11:30',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/parking.svg'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'бесплатно',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(41),
                                color: ColorPalate.mainYellowColor,
                              ),
                              child: const Text(
                                'Принять  заказы',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        );
      });
}
