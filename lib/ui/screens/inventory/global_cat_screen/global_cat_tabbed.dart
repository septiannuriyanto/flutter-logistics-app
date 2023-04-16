import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';
import 'package:dexter/ui/screens/inventory/global_cat_screen/global_cat_maintenance/global_cat_screen.dart';
import 'package:dexter/ui/screens/inventory/global_cat_screen/global_cat_viewer/global_cat_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalCatTabbedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          backgroundColor: secondaryColor,
          bottom: const TabBar(tabs: [
            Tab(text: "Catalogue Browser"),
            Tab(text: "Catalogue Maintenance"),
          ]),
          title: const Text('Global Catalogue Management'),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [GlobalCatViewer(), GlobalCatMaintenance()],
        ),
      ),
    );
  }
}
