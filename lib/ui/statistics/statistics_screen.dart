import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  late SelectionBehavior _selectionBehavior;
  @override
  void initState() {
    _selectionBehavior = SelectionBehavior(
        selectedColor: ColorPalate.mainYellowColor, enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('Jan 1', 35),
      _SalesData('Feb 2', 28),
      _SalesData('Mar 1', 34),
      _SalesData('Apr 3', 32),
      _SalesData('May 4', 40),
      _SalesData('Jun 5', 43),
      _SalesData('July 5', 34),
      _SalesData('Aug 2', 40),
      _SalesData('Sep 1', 50),
      _SalesData('Okt 1', 80),
      _SalesData('Nov 2', 20),
    ];

    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppScale.scaledHeight(0.06, context)),
        child: AppBar(
          backgroundColor: ColorPalate.mainBackgroundColor,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: SvgPicture.asset(
                'assets/icons/arrow_back.svg',
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            'Статистика',
            style: FontStyles.boldStyle(
              fontSize: 24,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: AppScale.scaledHeight(0.3, context),
        child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            title: ChartTitle(
                text: 'Half yearly sales analysis',
                textStyle: const TextStyle(
                  color: Colors.white,
                )),
            series: <ChartSeries<_SalesData, String>>[
              ColumnSeries<_SalesData, String>(
                color: const Color(0xffF39C12),
                opacity: 0.5,
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                // selectionBehavior: SelectionBehavior(selectedColor: Colors.red),
                selectionBehavior: _selectionBehavior,
                // Enable data label
                dataLabelSettings: const DataLabelSettings(
                    // color: Colors.white,
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    // Renders the data label
                    isVisible: true),
              ),
            ]),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
