import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class GlobalCatalogueModel {
  //global settings
  final int stockCode;
  String itemName;
  String mnemonic;
  String partNumber;
  String defaultPartNumber;
  String stockClass;
  String stockType;
  String uoi;
  int exel;
  //district settings
  List<String>? keywords;
  String? binLocation;
  double? invValue;
  String? uop;
  int? min;
  int? max;
  int? packageQty;

  GlobalCatalogueModel({
    required this.stockCode,
    required this.itemName,
    required this.mnemonic,
    required this.partNumber,
    required this.defaultPartNumber,
    required this.stockClass,
    required this.stockType,
    required this.uoi,
    required this.exel,
    this.keywords,
    this.binLocation,
    this.min,
    this.max,
    this.invValue,
    this.uop,
    this.packageQty,
  });

  static List<GridColumn> getColumnames() {
    return [
      GridColumn(
        columnName: 'stockCode',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Stock Code',
          ),
        ),
      ),
      GridColumn(
        columnName: 'itemName',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Item Name',
          ),
        ),
      ),
      GridColumn(
        columnName: 'mnemonic',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Mnemonic',
          ),
        ),
      ),
      GridColumn(
        columnName: 'partNumber',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Part Number',
          ),
        ),
      ),
      GridColumn(
        columnName: 'defaultPartNumber',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Default PN',
          ),
        ),
      ),
      GridColumn(
        columnName: 'stockClass',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Stock Class',
          ),
        ),
      ),
      GridColumn(
        columnName: 'stockType',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Stock Type',
          ),
        ),
      ),
      GridColumn(
        columnName: 'binLocation',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Bin Location',
          ),
        ),
      ),
      GridColumn(
        columnName: 'uoi',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'UOI',
          ),
        ),
      ),
      GridColumn(
        columnName: 'min',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Min',
          ),
        ),
      ),
      GridColumn(
        columnName: 'max',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Max',
          ),
        ),
      ),
      GridColumn(
        columnName: 'exel',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Exel',
          ),
        ),
      ),
      GridColumn(
        columnName: 'invValue',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Inv Value',
          ),
        ),
      ),
      GridColumn(
        columnName: 'uop',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'UOP',
          ),
        ),
      ),
      GridColumn(
        columnName: 'packageQty',
        label: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            'Package Qty',
          ),
        ),
      ),
    ];
  }

  // static List<GlobalCatalogueModel> getCatalogueItems() {
  // return [
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  //   GlobalCatalogueModel(
  //     stockCode: 2132121,
  //     itemName: 'DRILL, MACHINERY',
  //     mnemonic: 'MAKITA',
  //     partNumber: '2A30P3RT',
  //     defaultPartNumber: '2A30P3RT-W',
  //     stockClass: 'A',
  //     stockType: 'S',
  //     binLocation: '01A11A',
  //     uoi: 'ASSY',
  //     min: 0,
  //     max: 1,
  //     exel: 2252,
  //     invValue: 0.0,
  //     uop: 'ASSY',
  //     packageQty: 1,
  //   ),
  // ];
}
// }
