class GlobalCatTableModel {
  final int stockCode;
  final String partNumber;
  final String itemName;
  final String mnemonic;
  final String stockClass;

  final String uoi;

  GlobalCatTableModel(this.stockCode, this.partNumber, this.itemName,
      this.mnemonic, this.stockClass, this.uoi);
}
