import 'package:dexter/components/widgets/custom_widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../../assets/theme/color_constant.dart';
import '../../assets/theme/widget_functions.dart';

class TextFieldSuggestions extends StatelessWidget {
  TextFieldSuggestions(
      {required this.textFieldController,
      required this.identifier,
      this.listData,
      this.onFieldChanged,
      this.autoFocus,
      this.inputFormatter,
      this.onSubmitted});

  String identifier;
  TextEditingController textFieldController;
  final void Function(String?)? onFieldChanged;
  void Function(String)? onSubmitted;
  List<String>? listData;
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  bool? autoFocus;
  List<TextInputFormatter>? inputFormatter;
  @override
  Widget build(BuildContext context) {
    if (listData != null) {
      return Autocomplete(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return const Iterable<String>.empty();
          } else {
            return listData!.where((word) => word
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase()));
          }
        },
        optionsViewBuilder: (context, Function(String) onSelected, options) {
          return Material(
            elevation: 4,
            child: SizedBox(
              width: 100,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final option = options.elementAt(index);

                  return ListTile(
                    // title: Text(option.toString()),
                    title: SubstringHighlight(
                      text: option.toString(),
                      term: textFieldController.text,
                      textStyleHighlight:
                          TextStyle(fontWeight: FontWeight.w700),
                    ),
                    //subtitle: Text("This is subtitle"),
                    onTap: () {
                      onSelected(option.toString());
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: options.length,
              ),
            ),
          );
        },
        onSelected: (selectedString) {
          print(selectedString);
        },
        fieldViewBuilder: (context, controller, focusNode, onEditingComplete) {
          textFieldController = controller;
          return TextFormField(
            autofocus: autoFocus ?? false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              return !listData!.contains(value) && value!.isNotEmpty
                  ? "Choose the valid $identifier"
                  : null;
            },
            controller: controller,
            focusNode: focusNode,
            onEditingComplete: onEditingComplete,
            decoration: InputDecoration(
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: bord(12),
                borderSide: BorderSide(width: 1, color: companyPrimaryColor),
              ),
              focusColor: companySecondaryColor,
              fillColor: secondaryColor,
              contentPadding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
              border: OutlineInputBorder(
                borderRadius: bord(12),
              ),
            ),
            style: defaultTxtColor,
            onChanged: onFieldChanged,
            inputFormatters: inputFormatter,
            onFieldSubmitted: onSubmitted,
          );
        },
      );
    } else {
      return TextFormField(
        autofocus: autoFocus ?? false,
        controller: textFieldController,
        maxLines: 1,
        cursorColor: textColor,
        decoration: InputDecoration(
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: bord(12),
            borderSide: BorderSide(width: 1, color: companyPrimaryColor),
          ),
          focusColor: companySecondaryColor,
          fillColor: secondaryColor,
          contentPadding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
          border: OutlineInputBorder(
            borderRadius: bord(12),
          ),
        ),
        style: defaultTxtColor,
        onChanged: onFieldChanged,
        onFieldSubmitted: onSubmitted,
        inputFormatters: inputFormatter,
      );
    }
  }
}

class CustomDropDownSearch extends StatelessWidget {
  CustomDropDownSearch({super.key});
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      maxLines: 1,
      cursorColor: textColor,
      decoration: InputDecoration(
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: bord(12),
          borderSide: BorderSide(width: 1, color: companyPrimaryColor),
        ),
        focusColor: companySecondaryColor,
        fillColor: secondaryColor,
        contentPadding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
        border: OutlineInputBorder(
          borderRadius: bord(12),
        ),
      ),
      style: defaultTxtColor,
    );
  }
}
