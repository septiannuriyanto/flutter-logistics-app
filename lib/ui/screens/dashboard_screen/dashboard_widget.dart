import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import 'package:logistics/assets/theme/size_constant.dart';
import 'package:logistics/assets/theme/widget_functions.dart';
import 'package:logistics/components/utils/datetime_handler.dart';

import '../../../components/widgets/custom_widgets/custom_divider.dart';
import 'dashboard_controller.dart';

class DashboardWidget extends GetView<DashboardWidgetController> {
  String user_name = "Septian Nuriyanto";
  int jam = int.parse(DateFormat("HH").format(DateTime.now()));
  String shiftNum = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSpace(20),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Hello 👋🏻, $user_name",
                      style: txth1.copyWith(
                          color: textColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: LiteRollingSwitch(
                          width: 80,
                          textSize: 10,
                          value: jam > 7 && jam <= 18 ? true : false,
                          textOn: '',
                          textOff: '',
                          colorOn: Colors.blueAccent,
                          colorOff: Colors.black,
                          iconOn: Icons.wb_sunny,
                          iconOff: Icons.nightlight_outlined,
                          animationDuration: const Duration(milliseconds: 300),
                          onChanged: (bool state) {
                            state == true ? shiftNum = '1' : shiftNum = '2';
                          },
                          onTap: () {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Hari ini Tanggal : $formattedIndToday",
                style: txth3.copyWith(color: textColor),
              ),
            ),
            customDivider(null),
            vSpace(40),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Dashboard - Inventory",
                style: txth2.copyWith(
                  color: textColor,
                ),
              ),
            ),
            JobStatusWidget(),
            JobNotificationWidget(),
          ],
        ),
      ),
    );
  }

  Widget JobNotificationWidget() {
    return DashboardPanel(
      title: "Notifications",
      width: Get.width,
    );
  }
}

Widget JobStatusWidget() {
  final ScrollController controller = ScrollController();
  return SizedBox(
    width: Get.width,
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: ListView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            DashboardPanel(
              title: "Inventory value",
            ),
            DashboardPanel(
              title: "Stock under ROP",
            ),
            DashboardPanel(
              title: "Outstanding RO",
            ),
            DashboardPanel(
              title: "Availability MTD",
            ),
            DashboardPanel(
              title: "Inventory Turnover MTD",
            ),
            DashboardPanel(
              title: "Program Achievement",
            ),
          ],
        ),
      ),
    ),
  );
}

class DashboardPanel extends StatelessWidget {
  DashboardPanel({Key? key, this.title, this.width}) : super(key: key);
  String? title;
  double? width;
  @override
  Widget build(BuildContext context) {
    title ?? "Notitle";
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Container(
        height: 180,
        width: width ?? 180,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          borderRadius: bord(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: Text(
                title!,
                style: txth5.copyWith(color: textColor),
              ),
            ),
            customDivider(null),
          ],
        ),
      ),
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
