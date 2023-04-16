import 'package:dexter/assets/theme/color_constant.dart';
import 'package:dexter/assets/theme/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatelessWidget {
  DateTime chosenDate;
  final Function callbackFunction;

  CustomDatePicker({required this.chosenDate, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        child: Container(
          height: 40,
          width: Get.width,
          decoration:
              BoxDecoration(borderRadius: bord(12), border: Border.all()),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Center(
                  child: Text(DateFormat.d().format(chosenDate).toString()),
                ),
              )),
              const VerticalDivider(
                color: Colors.black,
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                      child:
                          Text(DateFormat.MMMM().format(chosenDate).toString()),
                    ),
                  )),
              const VerticalDivider(
                color: Colors.black,
              ),
              Expanded(
                  child: Container(
                child: Center(
                  child: Text(DateFormat.y().format(chosenDate).toString()),
                ),
              ))
            ],
          ),
        ),
        onTap: () async {
          final newDate = await showDatePicker(
            context: context,
            initialDate: chosenDate,
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now().add(
              const Duration(days: 365),
            ),
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                      primary: primaryColor, // <-- SEE HERE
                      onPrimary: primaryColor, // <-- SEE HERE
                      onSurface: primaryColor // <-- SEE HERE
                      ),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                        foregroundColor: primaryColor // button text color
                        ),
                  ),
                ),
                child: child!,
              );
            },
          );

          // final newDate = await Get.dialog(
          //   DatePickerDialog(
          //     initialDate: chosenDate,
          //     firstDate: DateTime.now().subtract(const Duration(days: 365)),
          //     lastDate: DateTime.now().add(
          //       const Duration(days: 365),
          //     ),
          //   ),
          // );

          if (newDate != null) {
            chosenDate = newDate;
            callbackFunction(newDate);
          }
        },
      ),
    );
  }
}
