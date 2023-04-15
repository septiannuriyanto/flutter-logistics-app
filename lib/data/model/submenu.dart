import 'package:flutter/material.dart';

class SubMenu {
  int menuIndex;
  String? title;
  Icon? icon;
  String? route;
  Widget? child;

  SubMenu(
      {required this.menuIndex, this.title, this.icon, this.route, this.child});
}
