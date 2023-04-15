import 'package:flutter/material.dart';
import 'package:logistics/ui/screens/inventory/global_cat_screen/global_cat_screen.dart';

import 'model/incumbent_menu.dart';
import 'model/submenu.dart';

List<IncumbentMenu> incumbentMenuList = [
  //1. Approval
  IncumbentMenu(
    incumbentTitle: "Approval",
    iconPath: 'lib/assets/icons/check-circle.svg',
    submenu: [
      SubMenu(menuIndex: 0, title: "Approval PO", route: "/mgrApprovalPO"),
      SubMenu(menuIndex: 1, title: "Approval MR", route: "/mgrApprovalMR"),
      SubMenu(menuIndex: 2, title: "Adjustment Stock", route: "/mgrAdjustment"),
    ],
  ),

  //2. Inventory
  IncumbentMenu(
    incumbentTitle: "Inventory",
    iconPath: 'lib/assets/icons/menu_tran.svg',
    submenu: [
      SubMenu(
          menuIndex: 3,
          title: "Global Catalogue",
          route: "/invCatalogue",
          child: const GlobalCatScreen()),
      SubMenu(menuIndex: 4, title: "Inventory Control", route: "/invControl"),
    ],
  ),
  //3. Purchasing
  IncumbentMenu(
    incumbentTitle: "Purchasing",
    iconPath: 'lib/assets/icons/menu_store.svg',
    submenu: [
      SubMenu(menuIndex: 5, title: "Supplier Register", route: "/purSupplier"),
      SubMenu(menuIndex: 6, title: "PO Approval Status", route: "/purApproval"),
      SubMenu(menuIndex: 7, title: "Purchase Order", route: "/purOrder"),
      SubMenu(menuIndex: 8, title: "Monitoring PO", route: "/purMonitoring"),
    ],
  ),
  //4. Warehouse
  IncumbentMenu(
    incumbentTitle: "Warehouse",
    iconPath: 'lib/assets/icons/menu_doc.svg',
    submenu: [
      SubMenu(menuIndex: 9, title: "Warehouse Request", route: "/whRequest"),
      SubMenu(menuIndex: 10, title: "Manual Request", route: "/whManual"),
      SubMenu(menuIndex: 11, title: "Update Binloc", route: "/whBinloc"),
    ],
  ),
];

int subMenuCount() {
  int count = 0;
  for (int i = 0; i < incumbentMenuList.length; i++) {
    for (int j = 0; j < incumbentMenuList[i].submenu!.length; j++) {
      count++;
    }
  }
  return count;
}

List<SubMenu> getSubmenuList() {
  List<SubMenu> subMenulist = [];
  for (int i = 0; i < incumbentMenuList.length; i++) {
    for (int j = 0; j < incumbentMenuList[i].submenu!.length; j++) {
      subMenulist.add(incumbentMenuList[i].submenu![j]);
    }
  }
  return subMenulist;
}

List<Widget> getSubMenuChild() {
  List<Widget> subMenulist = [];
  for (int i = 0; i < incumbentMenuList.length; i++) {
    for (int j = 0; j < incumbentMenuList[i].submenu!.length; j++) {
      incumbentMenuList[i].submenu![j].child != null
          ? subMenulist.add(incumbentMenuList[i].submenu![j].child!)
          : subMenulist.add(Center(
              child: Text(
                  "Submenu ${incumbentMenuList[i].submenu![j].title!} Not Created"),
            ));
    }
  }
  return subMenulist;
}
