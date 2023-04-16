import 'package:flutter/material.dart';

import '../../../assets/theme/color_constant.dart';

class SectionField extends StatelessWidget {
  SectionField({Key? key, required this.title, required this.inputWidget})
      : super(key: key);

  Widget inputWidget;

  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: defaultTxtColor.copyWith(fontSize: 12),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0), child: inputWidget))
        ],
      ),
    );
  }
}
