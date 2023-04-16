import 'package:flutter/material.dart';
import 'package:dexter/ui/routes/app_pages.dart';
import 'package:dexter/ui/screens/home_screen/desktop_scaffold.dart';
import 'package:dexter/ui/screens/home_screen/home_dashboard.dart';
import 'package:get/get.dart';
import 'package:dexter/ui/screens/home_screen/mobile_scaffold.dart';
import 'package:dexter/ui/screens/home_screen/tablet_scaffold.dart';
import 'package:dexter/ui/screens/responsive_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dexter ERP',
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   fontFamily: 'Poppins',
      //   primarySwatch: Colors.blue,
      // ),
      home: ResponsiveLayout(
        desktopScaffold: const DesktopScaffold(),
        tabletScaffold: const TabletScaffold(),
        mobileScaffold: const MobileScaffold(),
      ),
      getPages: AppPages.routes,
    );
  }
}
