import 'package:flutter/material.dart';
import 'package:logistics/assets/theme/color_constant.dart';

import '../../../components/widgets/main_container/main_container.dart';
import '../../../components/widgets/side_drawer/side_drawer.dart';
import '../dashboard_screen/dashboard_widget.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({
    Key? key,
    this.mainContainer,
  }) : super(key: key);
  final MainContainer? mainContainer;

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: 200,
              decoration: const BoxDecoration(color: tertiaryColor),
              child: SideDrawer(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                DashboardWidget(),
                MainContainer(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 34, 34, 34)),
            ),
          ),
        ],
      )),
    );
  }
}
