import 'package:flutter/material.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import 'package:logistics/assets/theme/widget_functions.dart';

class EgiSelectDialog extends StatelessWidget {
  const EgiSelectDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: bord(12),
        ),
      ),
    );
  }
}
