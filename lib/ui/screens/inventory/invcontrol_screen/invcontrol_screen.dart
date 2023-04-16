import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/assets/theme/size_constant.dart';
import 'package:dexter/components/widgets/custom_widgets/custom_button.dart';
import 'package:dexter/ui/screens/inventory/invcontrol_screen/create_ro_dialog/create_ro_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dexter/components/widgets/section_widgets/section.dart';
import 'package:dexter/components/widgets/section_widgets/section_wrapper.dart';
import 'package:get/get.dart';

class InventoryControl extends StatelessWidget {
  const InventoryControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Section(sectionTitle: 'Inventory Control', sectionContent: [
      SectionWrapper(
        title: "Outstanding RO",
        content: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: secondaryColor,
              height: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomRRButton(
                borderRadius: 12,
                color: defaultButtonColor,
                title: "Create new RO",
                width: desktopButtonWidth.toDouble(),
                onTap: () {
                  Get.dialog(CreateRoDialog());
                }),
          )
        ],
      ),
      SectionWrapper(
        title: "Stock Level Warning System",
        content: [
          Container(
            height: 500,
          )
        ],
      ),
      SectionWrapper(
        title: "Execution",
        content: [
          Container(
            height: 500,
          )
        ],
      ),
    ]);
  }
}
