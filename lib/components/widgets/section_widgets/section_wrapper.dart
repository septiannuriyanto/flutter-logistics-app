import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets/theme/color_constant.dart';
import '../../../assets/theme/size_constant.dart';
import '../../../assets/theme/widget_functions.dart';

class SectionWrapper extends StatelessWidget {
  SectionWrapper({required this.title, this.content});

  String title;
  List<Widget>? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: txth5.copyWith(color: textColor),
            ),
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: bord(14),
                color: primaryColor.withOpacity(0.3)),
            child: SingleChildScrollView(
              child: Column(
                children: content ?? [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
