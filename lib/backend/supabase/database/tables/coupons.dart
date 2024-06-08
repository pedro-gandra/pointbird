import '../database.dart';

class CouponsTable extends SupabaseTable<CouponsRow> {
  @override
  String get tableName => 'coupons';

  @override
  CouponsRow createRow(Map<String, dynamic> data) => CouponsRow(data);
}

class CouponsRow extends SupabaseDataRow {
  CouponsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CouponsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idReference => getField<int>('id_reference')!;
  set idReference(int value) => setField<int>('id_reference', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  double? get value => getField<double>('value');
  set value(double? value) => setField<double>('value', value);

  DateTime? get expiration => getField<DateTime>('expiration');
  set expiration(DateTime? value) => setField<DateTime>('expiration', value);

  double? get purchaseMin => getField<double>('purchase_min');
  set purchaseMin(double? value) => setField<double>('purchase_min', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  double? get rateToUsd => getField<double>('rate_to_usd');
  set rateToUsd(double? value) => setField<double>('rate_to_usd', value);
}
