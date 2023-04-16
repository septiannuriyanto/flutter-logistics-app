import 'package:dexter/assets/theme/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets/theme/color_constant.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key? key,
    this.onFieldChanged,
    this.onFieldTap,
    this.autoFocus,
  }) : super(key: key);

  void Function(String)? onFieldChanged;
  void Function()? onFieldTap;
  bool? autoFocus;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: desktopButtonHeight.toDouble(),
      width: desktopTextWidth.toDouble(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          autofocus: autoFocus ?? false,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: "Search",
              fillColor: secondaryColor,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  "lib/assets/icons/Search.svg",
                  width: 10,
                  height: 10,
                ),
              )),
          style: defaultTxtColor,
          onChanged: onFieldChanged,
          onTap: onFieldTap,
        ),
      ),
    );
  }
}
