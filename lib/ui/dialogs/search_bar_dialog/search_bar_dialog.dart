import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/components/search_field.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';
import 'package:dexter/ui/dialogs/search_bar_dialog/search_bar_dialog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarDialog extends GetView<SearchBarDialogController> {
  const SearchBarDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: Get.width * 0.5,
        height: Get.height,
        decoration: BoxDecoration(color: primaryColor),
        child: Column(
          children: [
            SectionHeadline(title: "Search App Modules"),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SearchField(
                  autoFocus: true,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(color: secondaryColor, child: ListView()),
            ))
          ],
        ),
      ),
    );
  }
}
