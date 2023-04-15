import 'package:flutter/material.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import '../../../components/widgets/global_appbar.dart';
import '../../../components/widgets/main_container/main_container.dart';
import '../../../components/widgets/side_drawer/side_drawer.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideDrawer(),
        appBar: GlobalAppBar,
        backgroundColor: bgColor,
        body: MainContainer());
  }
}
