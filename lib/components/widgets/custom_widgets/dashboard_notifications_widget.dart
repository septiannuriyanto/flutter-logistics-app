import 'package:dexter/assets/theme/widget_functions.dart';
import 'package:dexter/components/utils/datetime_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NotificationPriority { URGENT, HIGH, NORMAL, LOW }

class DashboardNotificationModel {}

class DashboardNotificationWidgetLight extends StatelessWidget {
  DashboardNotificationWidgetLight(
      {required this.title, required this.notificationPriority});
  NotificationPriority notificationPriority;
  String title;
  List<Color>? accents;
  String? ImagePath;
  @override
  Widget build(BuildContext context) {
    switch (notificationPriority) {
      case NotificationPriority.URGENT:
        ImagePath = 'lib/assets/icons/priority_urgent.png';
        accents = const [Color(0xff93291E), Color(0xffED213A)];
        break;
      case NotificationPriority.HIGH:
        accents = const [Color.fromARGB(255, 241, 84, 5), Color(0xfff5af19)];
        ImagePath = 'lib/assets/icons/priority_high.png';
        break;
      case NotificationPriority.NORMAL:
        accents = const [
          Color.fromARGB(255, 102, 172, 33),
          Color.fromARGB(180, 217, 255, 80)
        ];
        ImagePath = 'lib/assets/icons/priority_normal.png';
        break;
      case NotificationPriority.LOW:
        accents = const [Color(0xff2980B9), Color(0xff6DD5FA)];
        ImagePath = 'lib/assets/icons/priority_low.png';
        break;
    }
    accents ?? Colors.grey.shade300;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: bord(12), gradient: LinearGradient(colors: accents!)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            flex: 0,
            child: ListTile(
              leading: Image.asset(
                ImagePath!,
                width: 30,
                height: 30,
              ),
              title: SelectableText(title),
              subtitle: Text(formattedIndToday),
              trailing: IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardNotificationWidgetDark extends StatelessWidget {
  DashboardNotificationWidgetDark(
      {required this.title, required this.notificationPriority});
  NotificationPriority notificationPriority;
  String title;
  List<Color>? accents;
  String? ImagePath;
  @override
  Widget build(BuildContext context) {
    switch (notificationPriority) {
      case NotificationPriority.URGENT:
        ImagePath = 'lib/assets/icons/priority_urgent.png';
        accents = [Color(0xff93291E), Color(0xff93291E).withOpacity(0.3)];
        break;
      case NotificationPriority.HIGH:
        accents = [
          Color.fromARGB(255, 241, 84, 5),
          Color.fromARGB(255, 241, 84, 5).withOpacity(0.3)
        ];
        ImagePath = 'lib/assets/icons/priority_high.png';
        break;
      case NotificationPriority.NORMAL:
        accents = [
          Color.fromARGB(255, 102, 172, 33),
          Color.fromARGB(180, 217, 255, 80).withOpacity(0.3)
        ];
        ImagePath = 'lib/assets/icons/priority_normal.png';
        break;
      case NotificationPriority.LOW:
        accents = [Color(0xff2980B9), Color(0xff6DD5FA).withOpacity(0.3)];
        ImagePath = 'lib/assets/icons/priority_low.png';
        break;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: Get.width,
        decoration: BoxDecoration(
            color: accents![1],
            borderRadius: bord(12),
            border: Border.all(color: accents![0])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            flex: 0,
            child: ListTile(
              leading: Image.asset(
                ImagePath!,
                width: 30,
                height: 30,
              ),
              title: SelectableText(title),
              subtitle: Text(formattedIndToday),
              trailing: IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
