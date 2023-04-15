import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import 'package:logistics/assets/theme/size_constant.dart';
import 'package:logistics/assets/theme/widget_functions.dart';
import 'package:logistics/components/widgets/custom_widgets/custom_button.dart';
import 'package:logistics/components/widgets/custom_widgets/custom_divider.dart';
import 'package:logistics/ui/screens/inventory/global_cat_screen/global_cat_controller.dart';

class GlobalCatScreen extends GetView<GlobalCatController> {
  const GlobalCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Maintain Global Catalogue",
                  style: txtL.copyWith(color: textColor),
                ),
              ),
              customDivider(textColor),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                vSpace(20),
                CategoryContainer(
                  title: "Cataloguing Parameters",
                  content: [
                    CatalogueSections(
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
                    CatalogueSections(
                      title: "Equipment Group Identification",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Default Number List Register",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Register Number",
                      inputWidget: CustomDropDownSearch(),
                    ),
                  ],
                ),
                CategoryContainer(
                  title: "Inventory Parameters",
                  content: [
                    CatalogueSections(
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
                    CatalogueSections(
                      title: "Bin Location",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Stock On Hand",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Unit of Issue",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Minimum",
                      inputWidget: CustomDropDownSearch(),
                    ),
                    CatalogueSections(
                      title: "Maximum",
                      inputWidget: CustomDropDownSearch(),
                    ),
                  ],
                ),
                CategoryContainer(
                  title: "Purchasing Parameters",
                  content: [
                    CatalogueSections(
                      title: "Supplier",
                      inputWidget: CustomDropDownSearch(),
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
                color: companyPrimaryColor,
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

class CatalogueSections extends StatelessWidget {
  CatalogueSections({Key? key, required this.title, required this.inputWidget})
      : super(key: key);

  Widget inputWidget;

  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: defaultTxtColor.copyWith(fontSize: 12),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0), child: inputWidget))
        ],
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  CategoryContainer({required this.title, this.content});

  String title;
  List<Widget>? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: txth5.copyWith(color: textColor),
            ),
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: bord(14),
                color: primaryColor.withOpacity(0.3)),
            child: Column(
              children: content ?? [],
            ),
          ),
        ],
      ),
    );
  }
}

class ToggleContainer extends StatelessWidget {
  ToggleContainer({this.character, this.baseColor});

  String? character;
  Color? baseColor;
  Color? outlineColor;
  @override
  Widget build(BuildContext context) {
    if (baseColor == null) {
      baseColor ?? Colors.grey.shade300;
      outlineColor = Colors.grey.shade600;
    } else {
      baseColor = baseColor!.withOpacity(0.5);
      outlineColor = baseColor;
    }
    character ?? 'X';
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: bord(4),
          color: baseColor,
          border: Border.all(color: outlineColor!)),
      child: Center(
        child: Text(
          character!,
          style: defaultBold.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}

class CustomDropDownSearch extends StatelessWidget {
  CustomDropDownSearch({super.key});
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  final TextEditingController _typeAheadController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
