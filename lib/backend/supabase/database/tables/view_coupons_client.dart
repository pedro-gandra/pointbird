import '../database.dart';

class ViewCouponsClientTable extends SupabaseTable<ViewCouponsClientRow> {
  @override
  String get tableName => 'view_coupons_client';

  @override
  ViewCouponsClientRow createRow(Map<String, dynamic> data) =>
      ViewCouponsClientRow(data);
}

class ViewCouponsClientRow extends SupabaseDataRow {
  ViewCouponsClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewCouponsClientTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  String? get companyCode => getField<String>('company_code');
  set companyCode(String? value) => setField<String>('company_code', value);

  String? get currencySymbol => getField<String>('currency_symbol');
  set currencySymbol(String? value) =>
      setField<String>('currency_symbol', value);

  double? get rateToUsd => getField<double>('rate_to_usd');
  set rateToUsd(double? value) => setField<double>('rate_to_usd', value);

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
