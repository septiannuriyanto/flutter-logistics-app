import 'package:flutter/material.dart';
import 'package:logistics/assets/theme/color_constant.dart';

Widget customDivider(Color? dividerColor) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Divider(
      color: dividerColor ?? tertiaryColor,
      thickness: 1,
    ),
  );
}
