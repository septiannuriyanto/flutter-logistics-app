import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:dexter/components/widgets/custom_widgets/custom_snackbar.dart';

class MainContainerController extends GetxController {
  final CarouselController carousel_c = CarouselController();
  RxBool visibility = RxBool(false);
  RxInt currentPos = RxInt(0);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // window.onKeyPress.listen((KeyboardEvent e) {
    //   print(e.charCode.toString() + " " + new String.fromCharCode(e.charCode));
    // });
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

  jumpToScreen(int screenIndex) {
    visibility.value = true;
    currentPos.value = screenIndex;
    if (currentPos.value == null) return;

    try {
      carousel_c.jumpToPage(currentPos.value);
    } catch (e) {
      print(e);
    }
  }

  toggleVisibility() {
    visibility.value = !visibility.value;
  }
}
