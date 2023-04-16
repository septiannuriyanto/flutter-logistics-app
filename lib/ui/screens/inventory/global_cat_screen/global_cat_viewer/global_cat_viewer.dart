import 'package:dexter/ui/screens/inventory/global_cat_screen/global_cat_viewer/global_cat_viewer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'datagrid_source.dart';

class GlobalCatViewer extends StatefulWidget {
  GlobalCatViewer({super.key});

  @override
  State<GlobalCatViewer> createState() => _GlobalCatViewerState();
}

class _GlobalCatViewerState extends State<GlobalCatViewer> {
  final OrderInfoDataGridSource orderInfoDataGridSource =
      OrderInfoDataGridSource(
          isWebOrDesktop: true, orderDataCount: 100, isFilteringSample: false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SfDataGrid(
                headerGridLinesVisibility: GridLinesVisibility.none,
                gridLinesVisibility: GridLinesVisibility.both,
                allowColumnsResizing: true,
                allowSorting: true,
                allowFiltering: true,
                source: orderInfoDataGridSource,
                columnResizeMode: ColumnResizeMode.onResize,
                columns: [
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'stockCode',
                label: const Text(
                  'Stock Code',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'partNumber',
                label: const Text(
                  'Part Number',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'itemName',
                label: const Text(
                  'Item Name',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'mnemonic',
                label: const Text(
                  'Mnemonic',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'stockClass',
                label: const Text(
                  'Class',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GridColumn(
                width: 150,
                filterPopupMenuOptions:
                    const FilterPopupMenuOptions(filterMode: FilterMode.both),
                columnName: 'uoi',
                label: const Text(
                  'UOI',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ])),
      ],
    );
  }
}
