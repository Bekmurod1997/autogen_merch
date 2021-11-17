import 'dart:math';

import 'package:autogen_merch/constants/app_scale.dart';
import 'package:autogen_merch/constants/color.dart';
import 'package:autogen_merch/constants/fonts.dart';
import 'package:autogen_merch/ui/drawer/custom_drawer.dart';
import 'package:autogen_merch/ui/drawer/tuitorial.dart';
import 'package:autogen_merch/ui/time_table/widgets/future_order_dialog.dart';
import 'package:autogen_merch/ui/time_table/widgets/past_order_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:timeago/timeago.dart' as timeago;
// import 'package:syncfusion_localizations/syncfusion_localizations.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  _TimeTableScreenState createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  int hourNow = 0;

  bool isAnimated = false;

  @override
  void initState() {
    hourNow = DateTime.now().hour;
    print(hourNow);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: ColorPalate.mainBackgroundColor,
      key: _scaffoldKey,
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
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
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
          Expanded(
            child: SfCalendar(

                // view: CalendarView.week,
                view: CalendarView.day,
                backgroundColor: ColorPalate.mainBackgroundColor,
                cellBorderColor: Colors.yellow,
                // view: CalendarView.schedule,

                allowedViews: const <CalendarView>[
                  CalendarView.schedule,
                  CalendarView.week,
                  CalendarView.day,

                  // CalendarView.timelineWorkWeek,
                  // CalendarView.timelineMonth,
                ],
                scheduleViewMonthHeaderBuilder: (BuildContext buildContext,
                    ScheduleViewMonthHeaderDetails details) {
                  // final String monthName = _getMonthDate(details.date.month);
                  return Stack(
                    children: [
                      Image(
                          image:
                              details.date.month >= 6 && details.date.month <= 8
                                  ? const ExactAssetImage(
                                      'assets/images/summer.jpeg')
                                  : details.date.month >= 9 &&
                                          details.date.month <= 11
                                      ? const ExactAssetImage(
                                          'assets/images/fall.jpeg')
                                      : details.date.month == 12 ||
                                              details.date.month == 1 ||
                                              details.date.month == 2
                                          ? const ExactAssetImage(
                                              'assets/images/winter.jpeg')
                                          : const ExactAssetImage(
                                              'assets/images/spring.jpeg'),
                          // image: ExactAssetImage('images/' + '.png'),
                          fit: BoxFit.cover,
                          width: details.bounds.width,
                          height: details.bounds.height),
                      // Positioned(
                      //   left: 55,
                      //   right: 0,
                      //   top: 20,
                      //   bottom: 0,
                      //   child: Text(
                      //     details.date.month == 1
                      //         ? 'January'
                      //         : details.date.month == 2
                      //             ? 'February'
                      //             : details.date.month == 3
                      //                 ? 'March'
                      //                 : details.date.month == 4
                      //                     ? 'April'
                      //                     : details.date.month == 5
                      //                         ? 'May'
                      //                         : details.date.month == 6
                      //                             ? 'June'
                      //                             : details.date.month == 7
                      //                                 ? 'July'
                      //                                 : details.date.month == 8
                      //                                     ? 'Auguest'
                      //                                     : details.date.month ==
                      //                                             9
                      //                                         ? 'September'
                      //                                         : details.date
                      //                                                     .month ==
                      //                                                 10
                      //                                             ? 'Oktober'
                      //                                             : details.date
                      //                                                         .month ==
                      //                                                     11
                      //                                                 ? 'Novembre'
                      //                                                 : 'December' +
                      //                                                     '' +
                      //                                                     details
                      //                                                         .date
                      //                                                         .year
                      //                                                         .toString(),
                      //     style: TextStyle(fontSize: 18),
                      //   ),
                      // )
                    ],
                  );
                },
                headerStyle: const CalendarHeaderStyle(
                  // backgroundColor: Color(0xFF7fcd91),
                  textStyle: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 5,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                timeSlotViewSettings: const TimeSlotViewSettings(
                    timeIntervalHeight: 50,
                    timeTextStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Colors.white,
                    ),

                    // timeRulerSize: 100,
                    // timelineAppointmentHeight: 100,
                    // timeIntervalWidth: 100,
                    // timeInterval: Duration(minutes: 30),
                    timeInterval: Duration(minutes: 30),
                    timeFormat: 'h:mm'),
                dataSource: MeetingDataSource(
                  _getDataSource(),
                ),
                appointmentTextStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
                monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
                  showAgenda: true,
                  monthCellStyle: MonthCellStyle(
                    todayBackgroundColor: Colors.red,
                    trailingDatesBackgroundColor: Colors.red,
                    leadingDatesBackgroundColor: Colors.red,
                  ),
                ),
                onTap: (CalendarTapDetails details) {
                  dynamic appointment = details.appointments;
                  // ignore: avoid_print
                  print(appointment[0].clientName);
                  print(appointment[0].from.hour);
                  print('-------');
                  print(DateTime.now().hour);
                  // print(DateTime.now() >appointment[0].from? `` );
                  // Get.to(() => Tutorial());

                  hourNow < appointment[0].from.hour
                      ? futureOrderDialog(
                          context,
                          appointment[0].clientName,
                        )
                      : pastOrderDialog(context);
                }),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 13, 30, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 1));
    meetings.add(
      Meeting(
        // pressFunction: () => Get.to(() => Tutorial()),
        clientName: 'John',
        price: 430000,
        // price: 20000,
        // background: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        from: DateTime(today.year, today.month, today.day, 13, 30, 0),
        to: DateTime(today.year, today.month, today.day, 14, 30, 0),
        background: DateTime.now().isAfter(
                DateTime(today.year, today.month, today.day, 13, 30, 0))
            ? Colors.red
            : Colors.green,
      ),
    );
    meetings.add(
      Meeting(
        // pressFunction: () => Get.to(() => Tutorial()),
        clientName: 'John',
        price: 430000,
        // price: 20000,
        // background: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        from: DateTime(today.year, today.month, today.day, 21, 30, 0),
        to: DateTime(today.year, today.month, today.day, 22, 30, 0),
        background: DateTime.now().isAfter(
                DateTime(today.year, today.month, today.day, 21, 30, 0))
            ? Colors.red
            : Colors.green,
      ),
    );
    meetings.add(
      Meeting(
        // pressFunction: () => Get.to(() => Tutorial()),
        clientName: 'Alex',
        price: 20000,
        // price: 14999,
        // background: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        from: DateTime(today.year, today.month, today.day, 17, 30, 0),
        // from: DateTime(today.year, today.month, today.day, 17, 30, 0),
        to: DateTime(today.year, today.month, today.day, 18, 30, 0),
        background: DateTime.now().isAfter(
                DateTime(today.year, today.month, today.day, 17, 30, 0))
            ? Colors.red
            : Colors.green,
      ),
    );
    // print();
    print(DateTime.now().isAfter(startTime));
    meetings.add(
      Meeting(
        // pressFunction: () => Get.to(() => Tutorial()),
        clientName: 'Jahongir',
        price: 40000,
        // price: 14999,
        // background: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        from: DateTime(today.year, today.month, today.day, 08, 30, 0),
        to: DateTime(today.year, today.month, today.day, 9, 30, 0),
        background: DateTime.now().isAfter(
                DateTime(today.year, today.month, today.day, 03, 30, 0))
            ? Colors.red
            : Colors.green,
      ),
    );
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].clientName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }
}

class Meeting {
  Meeting({
    required this.clientName,
    // required this.price,
    required this.from,
    required this.to,
    required this.background,
    required this.price,
    // required this.pressFunction,
  });

  String clientName;
  // double price;
  DateTime from;
  DateTime to;
  Color background;
  double price;
  // VoidCallback pressFunction;
}
