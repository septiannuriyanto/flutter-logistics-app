import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DexterAboutDialog extends StatelessWidget {
  const DexterAboutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: Get.height,
        width: Get.width * 0.5,
        color: primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [SectionHeadline(title: 'About')],
          ),
        ),
      ),
    );
  }
}
