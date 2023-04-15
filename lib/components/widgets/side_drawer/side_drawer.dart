import 'package:get/get.dart';
import 'package:logistics/assets/theme/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistics/assets/theme/widget_functions.dart';
import 'package:logistics/data/model/submenu.dart';
import 'package:logistics/data/submenu_config.dart';

import '../main_container/main_container_controller.dart';

class SideDrawer extends GetView<MainContainerController> {
  SideDrawer({
    Key? key,
  }) : super(key: key);

  @override
  final controller = Get.put(MainContainerController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: tertiaryColor,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "lib/assets/logo/logo_icon.png",
                      width: 30,
                      height: 30,
                    ),
                    vSpace(10),
                    Text(
                      "Advanced Supply Chain Management",
                      textAlign: TextAlign.center,
                      style: defaultTxtColor,
                    )
                  ],
                ),
              ],
            ),
          ),
          DrawerTile(
            title: "Dashboard",
            svgSrc: "lib/assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: textColor,
            ),
          ),
          //====================================================================
          // DrawerListTile(
          //   title: "Approval",
          //   svgSrc: "lib/assets/icons/check-circle.svg",
          //   press: () {},
          //   subMenu: managerSubmenu,
          // ),
          // DrawerListTile(
          //   title: "Inventory",
          //   svgSrc: "lib/assets/icons/menu_tran.svg",
          //   press: () {},
          //   subMenu: inventorySubmenu,
          // ),
          // DrawerListTile(
          //   title: "Purchasing",
          //   svgSrc: "lib/assets/icons/menu_store.svg",
          //   press: () {},
          //   subMenu: purchasingSubmenu,
          // ),
          // DrawerListTile(
          //   title: "Warehouse",
          //   svgSrc: "lib/assets/icons/menu_doc.svg",
          //   press: () {},
          //   subMenu: warehouseSubmenu,
          // ),

//====================================================================
          Expanded(
            child: ListView.builder(
                itemCount: incumbentMenuList.length,
                itemBuilder: ((context, index) {
                  return ExpansionTile(
                    initiallyExpanded: false,
                    leading: SvgPicture.asset(
                      incumbentMenuList[index].iconPath!,
                      color: textColor,
                      height: 16,
                    ),
                    title: Text(
                      incumbentMenuList[index].incumbentTitle,
                      style: defaultTxtColor.copyWith(fontSize: 12),
                    ),
                    children: [
                      Container(
                        color: bgColor,
                        height: incumbentMenuList[index].submenu!.length * 50,
                        child: ListView.builder(
                            itemCount: incumbentMenuList[index].submenu!.length,
                            itemBuilder: ((context, index2) {
                              return MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Material(
                                  color: primaryColor,
                                  child: InkWell(
                                    hoverColor: secondaryColor,
                                    onTap: (() {
                                      int ind = incumbentMenuList[index]
                                          .submenu![index2]
                                          .menuIndex;
                                      if (controller.visibility == true) {
                                        controller.toggleVisibility();
                                      }
                                      if (index2 == null) return;
                                      controller.jumpToScreen(ind);
                                    }),
                                    child: ListTile(
                                      leading:
                                          const Icon(Icons.circle_outlined),
                                      title: Text(
                                        incumbentMenuList[index]
                                            .submenu![index2]
                                            .title!,
                                        style: defaultTxtColor.copyWith(
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })),
                      )
                    ],
                  );
                })),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: textColor,
            ),
          ),
          DrawerTile(
            title: "Log out",
            svgSrc: "lib/assets/icons/exit.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.subMenu,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final List<SubMenu> subMenu;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      leading: SvgPicture.asset(
        svgSrc,
        color: textColor,
        height: 16,
      ),
      title: Text(
        title,
        style: defaultTxtColor.copyWith(fontSize: 12),
      ),
      children: [
        subMenu.isNotEmpty
            ? Container(
                color: greenColor,
              )
            : Container(
                color: Colors.amber,
              )
      ],
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: textColor,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
