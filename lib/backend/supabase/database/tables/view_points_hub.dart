import '../database.dart';

class ViewPointsHubTable extends SupabaseTable<ViewPointsHubRow> {
  @override
  String get tableName => 'view_points_hub';

  @override
  ViewPointsHubRow createRow(Map<String, dynamic> data) =>
      ViewPointsHubRow(data);
}

class ViewPointsHubRow extends SupabaseDataRow {
  ViewPointsHubRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPointsHubTable();

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get clientEmail => getField<String>('client_email');
  set clientEmail(String? value) => setField<String>('client_email', value);

  int? get currentPoints => getField<int>('current_points');
  set currentPoints(int? value) => setField<int>('current_points', value);

  int? get points30days => getField<int>('points_30days');
  set points30days(int? value) => setField<int>('points_30days', value);

  int? get activeCoupons => getField<int>('active_coupons');
  set activeCoupons(int? value) => setField<int>('active_coupons', value);

  int? get disabledCoupons => getField<int>('disabled_coupons');
  set disabledCoupons(int? value) => setField<int>('disabled_coupons', value);

  double? get totalCouponValue => getField<double>('total_coupon_value');
  set totalCouponValue(double? value) =>
      setField<double>('total_coupon_value', value);
}
