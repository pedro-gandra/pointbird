import '../database.dart';

class ViewCouponsCompanyTable extends SupabaseTable<ViewCouponsCompanyRow> {
  @override
  String get tableName => 'view_coupons_company';

  @override
  ViewCouponsCompanyRow createRow(Map<String, dynamic> data) =>
      ViewCouponsCompanyRow(data);
}

class ViewCouponsCompanyRow extends SupabaseDataRow {
  ViewCouponsCompanyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewCouponsCompanyTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  int? get idReference => getField<int>('id_reference');
  set idReference(int? value) => setField<int>('id_reference', value);

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  int? get idCompany => getField<int>('id_company');
  set idCompany(int? value) => setField<int>('id_company', value);

  int? get idCoupon => getField<int>('id_coupon');
  set idCoupon(int? value) => setField<int>('id_coupon', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get expiration => getField<DateTime>('expiration');
  set expiration(DateTime? value) => setField<DateTime>('expiration', value);

  double? get purchaseMin => getField<double>('purchase_min');
  set purchaseMin(double? value) => setField<double>('purchase_min', value);

  double? get value => getField<double>('value');
  set value(double? value) => setField<double>('value', value);

  bool? get activeStatus => getField<bool>('active_status');
  set activeStatus(bool? value) => setField<bool>('active_status', value);
}
