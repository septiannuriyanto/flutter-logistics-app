import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = RxBool(false);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

class Theme {
  static ThemeData dark = ThemeData(
    fontFamily: 'Product Sans',
    brightness: Brightness.dark,
    buttonColor: Colors.green[300],
    accentColor: Colors.green[300],
    scaffoldBackgroundColor: Colors.blueGrey[900],
    canvasColor: Colors.blueGrey[900],
    //textSelectionColor: new Color.fromRGBO(81, 107, 84, 0.8),
    bottomAppBarColor: Colors.blueGrey[800],
    primaryColor: Colors.blueGrey[900],
    indicatorColor: Colors.green[300],
    cardColor: Colors.white,
    highlightColor: Colors.green[300],
    errorColor: Colors.red[400],
    //textSelectionHandleColor: Colors.green[300],
    splashColor: Colors.white10,
    buttonTheme: ButtonThemeData(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(22.0))),
    inputDecorationTheme: new InputDecorationTheme(
        contentPadding:
            new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        border: new OutlineInputBorder(
            gapPadding: 3.0, borderRadius: new BorderRadius.circular(22.0))),
  );
}
