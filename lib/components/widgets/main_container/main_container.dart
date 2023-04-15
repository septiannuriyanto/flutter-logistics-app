import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import 'package:logistics/assets/theme/widget_functions.dart';
import 'package:logistics/data/submenu_config.dart';

import 'main_container_controller.dart';

class MainContainer extends GetView<MainContainerController> {
  final controller = Get.put(MainContainerController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.visibility.value,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: bord(12), color: secondaryColor),
            child: Column(
              children: [
                Expanded(
                  flex: 0,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 20,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: IconButton(
                            onPressed: () {
                              controller.visibility.value = false;
                            },
                            icon: const Icon(Icons.cancel_rounded,
                                color: Colors.redAccent, size: 20)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: CarouselSlider.builder(
                    carouselController: controller.carousel_c,
                    itemCount: getSubMenuChild().length,
                    options: CarouselOptions(
                      height: Get.height,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      initialPage: controller.currentPos.value,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                    ),
                    itemBuilder: ((context, index, realIndex) {
                      return Container(child: getSubMenuChild()[realIndex]);
                    }),
                  ),
                ),
                Expanded(flex: 0, child: Container())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
