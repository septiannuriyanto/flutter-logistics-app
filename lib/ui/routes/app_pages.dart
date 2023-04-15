import 'package:get/get.dart';

import '../../components/widgets/main_container/main_container.dart';
import '../../components/widgets/main_container/main_container_binding.dart';
import '../screens/inventory/global_cat_screen/global_cat_binding.dart';
import '../screens/inventory/global_cat_screen/global_cat_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.RESPONSIVE;
  static final routes = [
    // GetPage(
    //   name: _Paths.SPLASH,
    //   page: () => SplashScreen(),
    //   binding: SplashBinding(),
    // ),
    GetPage(
      name: _Paths.INV_CATALOGUE,
      page: () => GlobalCatScreen(),
      binding: GlobalCatBinding(),
    ),

    GetPage(
      name: _Paths.MAIN_CONTAINER,
      page: () => MainContainer(),
      binding: MainContainerBinding(),
    ),
  ];
}
