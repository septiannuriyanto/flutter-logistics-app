import 'package:flutter/material.dart';
import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/components/widgets/side_drawer/side_drawer.dart';

import '../../../components/widgets/global_appbar.dart';
import '../../../components/widgets/main_container/main_container.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: GlobalAppBar,
      backgroundColor: bgColor,
      body: MainContainer(),
    );
  }
}
