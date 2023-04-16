import 'package:get/get.dart';
import 'package:dexter/ui/screens/inventory/global_cat_screen/global_cat_maintenance/global_cat_controller.dart';

class GlobalCatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalCatController>(() => GlobalCatController(), fenix: true);
  }
}
