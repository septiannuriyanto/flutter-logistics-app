import 'package:dexter/components/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/assets/theme/size_constant.dart';
import 'package:dexter/assets/theme/widget_functions.dart';
import 'package:dexter/components/widgets/custom_widgets/custom_button.dart';
import 'package:dexter/components/widgets/custom_widgets/custom_divider.dart';
import 'package:dexter/components/widgets/section_widgets/section_headline.dart';
import 'package:dexter/data/model/egi_data.dart';
import 'package:dexter/data/model/uoi_data.dart';
import 'package:dexter/ui/screens/inventory/global_cat_screen/global_cat_maintenance/global_cat_controller.dart';

import '../../../../../components/widgets/section_widgets/section_field.dart';
import '../../../../../components/widgets/section_widgets/section_wrapper.dart';
import '../../../../../components/widgets/textfield_suggestion.dart';
import '../../../../../components/widgets/toggle_container.dart';

class GlobalCatMaintenance extends GetView<GlobalCatController> {
  GlobalCatMaintenance({super.key});

  String? stock_class;
  final egi_c = TextEditingController();
  final uoi_c = TextEditingController();
  final binloc_c = TextEditingController();

  final defaultregister_c = TextEditingController();
  final register_c = TextEditingController();
  final exel_c = TextEditingController();
  final supplier_c = TextEditingController();
  final invvalue_c = TextEditingController();
  final soh_c = TextEditingController();
  final min_c = TextEditingController();
  final max_c = TextEditingController();
  final uop_c = TextEditingController();
  final package_c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                vSpace(20),
                SectionWrapper(
                  title: "Cataloguing Parameters",
                  content: [
                    SectionField(
                      title: "Commodity Type",
                      inputWidget: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "S",
                              baseColor: Colors.redAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "L",
                              baseColor: Colors.orangeAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "T",
                              baseColor: Colors.yellowAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "G",
                              baseColor: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionField(
                      title: "Equipment Group Identification",
                      inputWidget: TextFieldSuggestions(
                        textFieldController: egi_c,
                        identifier: 'EGI',
                        listData: EGIService.egi,
                      ),
                    ),
                    SectionField(
                      title: "Default Number List Register",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'defaultregister',
                        textFieldController: defaultregister_c,
                      ),
                    ),
                    SectionField(
                      title: "Register Number",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'register',
                        textFieldController: register_c,
                      ),
                    ),
                  ],
                ),
                SectionWrapper(
                  title: "Inventory Parameters",
                  content: [
                    SectionField(
                      title: "Stock Class",
                      inputWidget: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "A",
                              baseColor: Colors.redAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "D",
                              baseColor: Colors.orangeAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "Q",
                              baseColor: Colors.yellowAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ToggleContainer(
                              character: "T",
                              baseColor: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionField(
                        title: "Bin Location",
                        inputWidget: TextFieldSuggestions(
                          identifier: 'binloc',
                          textFieldController: binloc_c,
                        )),
                    SectionField(
                      title: "Stock On Hand",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'soh',
                        textFieldController: soh_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                    SectionField(
                      title: "Unit of Issue",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'UOI',
                        listData: UOIService.uoi,
                        textFieldController: uoi_c,
                      ),
                    ),
                    SectionField(
                      title: "Minimum",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'min',
                        textFieldController: min_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                    SectionField(
                      title: "Maximum",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'max',
                        textFieldController: max_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                  ],
                ),
                SectionWrapper(
                  title: "Purchasing Parameters",
                  content: [
                    SectionField(
                      title: "Supplier",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'supplier',
                        textFieldController: supplier_c,
                      ),
                    ),
                    SectionField(
                      title: "Expense Element",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'exel',
                        textFieldController: exel_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                    SectionField(
                      title: "Inventory Value",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'invvalue',
                        textFieldController: invvalue_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                    SectionField(
                      title: "Unit of Purchase",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'uop',
                        textFieldController: uop_c,
                      ),
                    ),
                    SectionField(
                      title: "Package Qty",
                      inputWidget: TextFieldSuggestions(
                        identifier: 'packing',
                        textFieldController: package_c,
                        inputFormatter: [numberOnly],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomRRButton(
                color: defaultButtonColor,
                splashColor: Colors.white,
                borderRadius: 12,
                title: 'Submit',
                width: desktopButtonWidth.toDouble(),
                onTap: () {}),
          ),
        )
      ],
    );
  }
}
