import 'package:dexter/data/model/submenu.dart';

class IncumbentMenu {
  String incumbentTitle;
  String? iconPath;
  List<SubMenu>? submenu;

  IncumbentMenu({
    required this.incumbentTitle,
    this.iconPath,
    this.submenu,
  });
}
