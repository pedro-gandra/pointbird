import '../database.dart';

class ViewHomeCompanyTable extends SupabaseTable<ViewHomeCompanyRow> {
  @override
  String get tableName => 'view_home_company';

  @override
  ViewHomeCompanyRow createRow(Map<String, dynamic> data) =>
      ViewHomeCompanyRow(data);
}

class ViewHomeCompanyRow extends SupabaseDataRow {
  ViewHomeCompanyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHomeCompanyTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  List<int> get checkIn => getListField<int>('checkIn');
  set checkIn(List<int>? value) => setListField<int>('checkIn', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  int? get reviews => getField<int>('reviews');
  set reviews(int? value) => setField<int>('reviews', value);
}
