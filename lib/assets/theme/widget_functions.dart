import 'package:flutter/material.dart';
import 'package:dexter/assets/theme/color_constant.dart';

//MAIN THEME FOR APP============================================================

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: primaryColor,
    textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
    fontFamily: "Poppins",
    primaryColor: primaryColor,
  );
}

class lightMode {}

toggleMode(bool isDarkModeOn) {
  if (isDarkModeOn) {
    const secondaryColor = Color(0xFF2A2D3E);
    const bgColor = Color(0xFF212132);
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

BorderRadius bord(double radius) {
  return BorderRadius.all(Radius.circular(radius));
}

vSpace(double height) {
  return SizedBox(
    height: height,
  );
}

InputDecoration kTextFieldDecoration = const InputDecoration(
    hintText: 'Mohon diisi',
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));

LinearGradient gradientLightBlueWhite = LinearGradient(
  colors: [
    Colors.white,
    Colors.lightBlue.shade100,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const IconData FingerprintIcon = IconData(0xe287, fontFamily: 'MaterialIcons');

final shadowPanel = [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 5,
    offset: const Offset(0, 5),
  ),
  // BoxShadow(
  //   color: Colors.grey.shade300,
  //   offset: const Offset(-5, 0),
  // )
];

final subtleShadow = [
  const BoxShadow(
    color: primaryColor, //HexColor('9F9F9F'),
    spreadRadius: 1,
    blurRadius: 50,
    offset: Offset(1, 20),
  ),
];
