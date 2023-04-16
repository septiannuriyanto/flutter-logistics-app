import 'dart:ui';

import 'package:dexter/components/search_field.dart';
import 'package:dexter/components/widgets/custom_widgets/dashboard_notifications_widget.dart';
import 'package:dexter/components/widgets/mini_information/daily_info_model.dart';
import 'package:dexter/components/widgets/mini_information/line_chart_model.dart';
import 'package:dexter/components/widgets/mini_information/mini_information.dart';
import 'package:dexter/ui/dialogs/search_bar_dialog/search_bar_dialog.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/assets/theme/size_constant.dart';
import 'package:dexter/assets/theme/widget_functions.dart';
import 'package:dexter/components/utils/datetime_handler.dart';

import '../../../components/widgets/custom_widgets/custom_divider.dart';
import '../../dialogs/about_dialog.dart';
import 'dashboard_controller.dart';

class DashboardWidget extends GetView<DashboardWidgetController> {
  String user_name = "Septian Nuriyanto";

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
                      child: SearchField(
                        onFieldTap: () => Get.dialog(SearchBarDialog()),
                      )),
                  const Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        backgroundColor: textColor,
                        radius: 20,
                        foregroundImage: AssetImage(
                          'lib/assets/icons/user.png',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () => Get.dialog(DexterAboutDialog()),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: textColor)),
                              child: Image.asset(
                                  'lib/assets/logo/client/logo_icon.png'),
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
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
      widgetContent: [
        DashboardNotificationWidgetDark(
          title: '5 Outstanding RO(s), Highest Duedate 10 Day(s)',
          notificationPriority: NotificationPriority.HIGH,
        ),
        DashboardNotificationWidgetDark(
          title: 'Availability MTD : 85%',
          notificationPriority: NotificationPriority.NORMAL,
        ),
        DashboardNotificationWidgetDark(
          title: '10 Stock Under ROP',
          notificationPriority: NotificationPriority.URGENT,
        ),
        DashboardNotificationWidgetDark(
          title: 'ITO MTD 52 Day(s)',
          notificationPriority: NotificationPriority.LOW,
        ),
        DashboardNotificationWidgetDark(
          title: 'Program Achievement MTD 84%',
          notificationPriority: NotificationPriority.LOW,
        ),
      ],
    );
  }
}

Widget JobStatusWidget() {
  final ScrollController controller = ScrollController();
  final dailyData = DailyInfoModel();
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
            // MiniInformationWidget(dailyData: dailyData),
            MiniInfoPanel(
              title: "Inventory value",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.blue(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\$ 40.000',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
            MiniInfoPanel(
              title: "Stock under ROP",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.orange(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '10 item(s)',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
            MiniInfoPanel(
              title: "Outstanding RO",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.slate(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '5 RO(s)',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
            MiniInfoPanel(
              title: "Availability MTD",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.red(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '85%',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
            MiniInfoPanel(
              title: "Inventory Turnover MTD",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.green(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '52 Day(s)',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
            MiniInfoPanel(
              title: "Program Achievement",
              widgetContent: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: LineChartBank.blue(),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 0,
                  child: customDivider(null),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '84%',
                      style: txth2.copyWith(color: textColor),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

class DashboardPanel extends StatelessWidget {
  DashboardPanel(
      {Key? key, this.title, this.width, required this.widgetContent})
      : super(key: key);
  String? title;
  double? width;
  List<Widget> widgetContent;
  @override
  Widget build(BuildContext context) {
    title ?? "Notitle";
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Container(
        height: Get.width * 0.25,
        width: width ?? 180,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          borderRadius: bord(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  title!,
                  style: txth5.copyWith(color: textColor),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: customDivider(null),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: widgetContent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MiniInfoPanel extends StatelessWidget {
  MiniInfoPanel({Key? key, this.title, this.width, this.widgetContent})
      : super(key: key);
  String? title;
  double? width;
  List<Widget>? widgetContent;
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
          child: widgetContent == null
              ? Column(
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
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Expanded(
                      child: Column(
                        children: widgetContent!,
                      ),
                    )
                  ],
                )),
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
