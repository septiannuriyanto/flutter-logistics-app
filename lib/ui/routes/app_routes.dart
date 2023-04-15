part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const RESPONSIVE = _Paths.RESPONSIVE;
  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
  static const SIGNIN = _Paths.SIGNIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const PROFILE = _Paths.PROFILE;
  static const MAIN_CONTAINER = _Paths.MAIN_CONTAINER;

  static const APPROVAL_PO = _Paths.APPROVAL_PO;
  static const APPROVAL_MR = _Paths.APPROVAL_MR;
  static const ADJ_STOCK = _Paths.ADJ_STOCK;

  static const INV_CATALOGUE = _Paths.INV_CATALOGUE;
  static const INV_CONTROL = _Paths.INV_CONTROL;

  static const PUR_SUPPLIER = _Paths.PUR_SUPPLIER;
  static const PUR_APPROVAL = _Paths.PUR_APPROVAL;
  static const PUR_ORDER = _Paths.PUR_ORDER;
  static const PUR_MONITORING = _Paths.PUR_MONITORING;

  static const WH_REQUEST = _Paths.WH_REQUEST;
  static const WH_MANUAL = _Paths.WH_MANUAL;
  static const WH_BINLOC = _Paths.WH_BINLOC;
}

abstract class _Paths {
  _Paths._();

  static const RESPONSIVE = "/responsive";
  static const HOME = "/home";
  static const SPLASH = "/splash";
  static const SIGNIN = "/signin";
  static const SIGNUP = "/signup";
  static const PROFILE = "/profile";
  static const MAIN_CONTAINER = "/mainContainer";

  static const APPROVAL_PO = "/mgrApprovalPO";
  static const APPROVAL_MR = "/mgrApprovalMR";
  static const ADJ_STOCK = "/mgrAdjustment";

  static const INV_CATALOGUE = "/invCatalogue";
  static const INV_CONTROL = "/invControl";

  static const PUR_SUPPLIER = "/purSupplier";
  static const PUR_APPROVAL = "/purApproval";
  static const PUR_ORDER = "/purOrder";
  static const PUR_MONITORING = "/purMonitoring";

  static const WH_REQUEST = "/whRequest";
  static const WH_MANUAL = "/whManual";
  static const WH_BINLOC = "/whBinloc";
}
