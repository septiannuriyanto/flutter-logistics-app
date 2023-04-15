import 'package:flutter/material.dart';
import 'package:logistics/assets/theme/size_constant.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < iphoneMaxWidth) {
          return mobileScaffold;
        } else if (constraint.maxWidth < tabletMaxWidth) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
