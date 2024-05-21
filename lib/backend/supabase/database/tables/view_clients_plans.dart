import '../database.dart';

class ViewClientsPlansTable extends SupabaseTable<ViewClientsPlansRow> {
  @override
  String get tableName => 'view_clients_plans';

  @override
  ViewClientsPlansRow createRow(Map<String, dynamic> data) =>
      ViewClientsPlansRow(data);
}

class ViewClientsPlansRow extends SupabaseDataRow {
  ViewClientsPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewClientsPlansTable();

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  int? get idPlan => getField<int>('id_plan');
  set idPlan(int? value) => setField<int>('id_plan', value);

  DateTime? get expiration => getField<DateTime>('expiration');
  set expiration(DateTime? value) => setField<DateTime>('expiration', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get namePlan => getField<String>('name_plan');
  set namePlan(String? value) => setField<String>('name_plan', value);

  bool? get ads => getField<bool>('ads');
  set ads(bool? value) => setField<bool>('ads', value);

  int? get limitCoupons => getField<int>('limit_coupons');
  set limitCoupons(int? value) => setField<int>('limit_coupons', value);

  int? get limitFollowing => getField<int>('limit_following');
  set limitFollowing(int? value) => setField<int>('limit_following', value);

  int? get multiplier => getField<int>('multiplier');
  set multiplier(int? value) => setField<int>('multiplier', value);

  bool? get everStreak => getField<bool>('everStreak');
  set everStreak(bool? value) => setField<bool>('everStreak', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get priceAnual => getField<double>('priceAnual');
  set priceAnual(double? value) => setField<double>('priceAnual', value);

  int? get coupons => getField<int>('coupons');
  set coupons(int? value) => setField<int>('coupons', value);

  int? get following => getField<int>('following');
  set following(int? value) => setField<int>('following', value);
}
