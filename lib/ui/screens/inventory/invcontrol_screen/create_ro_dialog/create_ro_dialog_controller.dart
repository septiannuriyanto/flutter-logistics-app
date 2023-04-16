import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CreateRoDialogController extends GetxController {
  final sc_c = TextEditingController();
  final qty_c = TextEditingController();
  final msg_c = TextEditingController();
  RxString sc = RxString('');
  RxString pn = RxString('');
  RxString itemname = RxString('');
  RxString qty = RxString('');
  RxString uoi = RxString('');
  RxString min = RxString('');
  RxString max = RxString('');
  RxString message = RxString('');
  RxString redirectto = RxString('');

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
}
