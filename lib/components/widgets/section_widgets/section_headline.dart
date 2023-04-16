import 'package:flutter/material.dart';

import '../../../assets/theme/color_constant.dart';
import '../../../assets/theme/size_constant.dart';
import '../custom_widgets/custom_divider.dart';

class SectionHeadline extends StatelessWidget {
  SectionHeadline({required this.title, super.key});

  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title,
              style: txtL.copyWith(color: textColor),
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        customDivider(textColor),
      ],
    );
  }
}
