import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/assets/theme/widget_functions.dart';
import 'package:dexter/components/widgets/custom_widgets/custom_snackbar.dart';
import 'package:dexter/components/widgets/section_widgets/section_field.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';
import 'package:dexter/components/widgets/section_widgets/section_wrapper.dart';
import 'package:dexter/components/widgets/textfield_suggestion.dart';
import 'package:dexter/ui/screens/inventory/invcontrol_screen/create_ro_dialog/create_ro_dialog_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../assets/theme/size_constant.dart';
import '../../../../../components/utils/formatter.dart';
import '../../../../../components/widgets/custom_widgets/custom_button.dart';

class CreateRoDialog extends GetView<CreateRoDialogController> {
  CreateRoDialog({super.key});
  final controller = Get.put(CreateRoDialogController());
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: Get.height,
        width: Get.width * 0.5,
        decoration:
            BoxDecoration(color: secondaryColor, borderRadius: bord(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SectionHeadline(title: 'Create Recommended Order'),
                vSpace(20),
                SectionField(
                  title: 'Stock Code (Enter to fetch detail)',
                  inputWidget: TextFieldSuggestions(
                    autoFocus: true,
                    identifier: 'stock code',
                    textFieldController: controller.sc_c,
                    onFieldChanged: (p0) => controller.sc.value = p0!,
                    inputFormatter: [
                      numberOnly,
                    ],
                  ),
                ),
                SectionField(
                  title: 'Qty',
                  inputWidget: TextFieldSuggestions(
                    identifier: 'qty ro',
                    textFieldController: controller.qty_c,
                    onFieldChanged: (p0) => controller.qty.value = p0!,
                    inputFormatter: [
                      numberOnly,
                    ],
                  ),
                ),
                SectionField(
                  title: 'Message',
                  inputWidget: TextFieldSuggestions(
                    identifier: 'message',
                    textFieldController: controller.msg_c,
                    onFieldChanged: (p0) => controller.message.value = p0!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Recommended Order Parameters',
                    style: defaultTxtColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 1)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Stock Code')),
                              Expanded(
                                  child: Obx(
                                      () => Text(': ${controller.sc.value}')))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Part Number')),
                              Expanded(child: Text(': ${controller.pn.value}'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Item Name')),
                              Expanded(
                                  child: Text(': ${controller.itemname.value}'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Qty Request')),
                              Expanded(
                                  child: Obx(
                                      () => Text(': ${controller.qty.value}')))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('UOI')),
                              Expanded(child: Text(': ${controller.uoi.value}'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Min')),
                              Expanded(child: Text(': ${controller.min.value}'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Max')),
                              Expanded(child: Text(': ${controller.max.value}'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Message')),
                              Expanded(
                                  child: Obx(() =>
                                      Text(': ${controller.message.value}')))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Expanded(child: Text('Redirect to')),
                              Expanded(
                                  child:
                                      Text(': ${controller.redirectto.value}'))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomRRButton(
                      borderRadius: 12,
                      color: defaultButtonColor,
                      title: "Finalize RO",
                      width: desktopButtonWidth.toDouble(),
                      onTap: () {
                        Get.back(result: 'success');
                        customSuccessMessage(
                            "Success", "Success Create Recommended Order");
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
