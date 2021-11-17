import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/order_detail/order_detai_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => OrderDetailScreen());
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
        padding:
            const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 38),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          color: ColorPalate.mainYellowColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/person.svg',
                  height: 35,
                  width: 35,
                ),
                SizedBox(
                  width: AppScale.scaledWidth(0.04, context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Камиль Ильдаров',
                      style: FontStyles.boldStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      '+99897726489',
                      style: FontStyles.regularStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1.4,
              color: Colors.black,
            ),
            const SizedBox(height: 8),
            Text(
              'Дата посещения ',
              style: FontStyles.mediumStyle(
                  fontSize: 18, fontFamily: 'Montserrat'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '03.12.2019',
                  style: FontStyles.regularStyle(
                      fontSize: 12, fontFamily: 'Montserrat'),
                ),
                Text(
                  '16:35',
                  style: FontStyles.mediumStyle(
                      fontSize: 18, fontFamily: 'Montserrat'),
                ),
              ],
            ),
            const Divider(
              thickness: 1.4,
              color: Colors.black,
            ),
            const SizedBox(height: 8),
            Text(
              'Тип автомобиля ',
              style: FontStyles.mediumStyle(
                  fontSize: 18, fontFamily: 'Montserrat'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'легковой ',
                  style: FontStyles.regularStyle(
                      fontSize: 18, fontFamily: 'Montserrat'),
                ),
                SvgPicture.asset(
                  'assets/icons/car_s.svg',
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
