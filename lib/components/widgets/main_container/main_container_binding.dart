import 'package:get/get.dart';

import 'main_container_controller.dart';

class MainContainerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainContainerController>(() => MainContainerController(),
        fenix: true);
  }
}
