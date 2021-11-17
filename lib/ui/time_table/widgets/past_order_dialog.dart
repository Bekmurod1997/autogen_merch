import 'package:autogen_merch/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

void pastOrderDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Dismissible(
              direction: DismissDirection.vertical,
              key: Key('1'),
              onDismissed: (direction) {
                Get.back();
              },
              child: Stack(
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
                            // height: 200,
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.orange,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/person4.png'))),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                    const SizedBox(height: 5),
                                    Divider(
                                      color: ColorPalate.mainYellowColor,
                                      thickness: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Дата посещения',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '16:35',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      '03.12.2019',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Divider(
                                      color: ColorPalate.mainYellowColor,
                                      thickness: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: const [
                                            Text(
                                              'Тип автомобиля',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'легковой',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/car_s.svg',
                                          color: ColorPalate.mainYellowColor,
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Divider(
                                      color: ColorPalate.mainYellowColor,
                                      thickness: 3,
                                    ),
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
                                    const SizedBox(height: 5),
                                    Divider(
                                      color: ColorPalate.mainYellowColor,
                                      thickness: 3,
                                    ),
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
                                  ],
                                ),
                                Positioned(
                                    right: 0,
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      // color: Colors.yellow,
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.back();
                                            print('prssed cancel');
                                          },
                                          child: Icon(
                                            Icons.cancel_outlined,
                                            color: ColorPalate.mainYellowColor,
                                          )),
                                    )),
                              ],
                            ));
                      })),
                ],
              ),
            ),
          ));
}
