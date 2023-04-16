import 'package:flutter/material.dart';

import '../../assets/theme/color_constant.dart';
import '../../assets/theme/widget_functions.dart';

class ToggleContainer extends StatelessWidget {
  ToggleContainer({this.character, this.baseColor});

  String? character;
  Color? baseColor;
  Color? outlineColor;
  @override
  Widget build(BuildContext context) {
    if (baseColor == null) {
      baseColor ?? Colors.grey.shade300;
      outlineColor = Colors.grey.shade600;
    } else {
      baseColor = baseColor!.withOpacity(0.5);
      outlineColor = baseColor;
    }
    character ?? 'X';
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: bord(4),
          color: baseColor,
          border: Border.all(color: outlineColor!)),
      child: Center(
        child: Text(
          character!,
          style: defaultBold.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
