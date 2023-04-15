import 'package:flutter/material.dart';
import 'package:logistics/ui/routes/app_pages.dart';
import 'package:logistics/ui/screens/home_screen/desktop_scaffold.dart';
import 'package:logistics/ui/screens/home_screen/home_dashboard.dart';
import 'package:get/get.dart';
import 'package:logistics/ui/screens/home_screen/mobile_scaffold.dart';
import 'package:logistics/ui/screens/home_screen/tablet_scaffold.dart';
import 'package:logistics/ui/screens/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supply Chain Management',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(
        desktopScaffold: const DesktopScaffold(),
        tabletScaffold: const TabletScaffold(),
        mobileScaffold: const MobileScaffold(),
      ),
      getPages: AppPages.routes,
    );
  }
}
