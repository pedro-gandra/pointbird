import '../database.dart';

class PlansTable extends SupabaseTable<PlansRow> {
  @override
  String get tableName => 'plans';

  @override
  PlansRow createRow(Map<String, dynamic> data) => PlansRow(data);
}

class PlansRow extends SupabaseDataRow {
  PlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get multiplier => getField<int>('multiplier');
  set multiplier(int? value) => setField<int>('multiplier', value);

  int? get limitCoupons => getField<int>('limit_coupons');
  set limitCoupons(int? value) => setField<int>('limit_coupons', value);

  int? get limitFollowing => getField<int>('limit_following');
  set limitFollowing(int? value) => setField<int>('limit_following', value);

  bool? get everStreak => getField<bool>('everStreak');
  set everStreak(bool? value) => setField<bool>('everStreak', value);

  bool? get ads => getField<bool>('ads');
  set ads(bool? value) => setField<bool>('ads', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get priceAnual => getField<double>('priceAnual');
  set priceAnual(double? value) => setField<double>('priceAnual', value);
}
