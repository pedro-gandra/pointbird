import '../database.dart';

class ViewExploreTable extends SupabaseTable<ViewExploreRow> {
  @override
  String get tableName => 'view_explore';

  @override
  ViewExploreRow createRow(Map<String, dynamic> data) => ViewExploreRow(data);
}

class ViewExploreRow extends SupabaseDataRow {
  ViewExploreRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewExploreTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

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

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get nameCountry => getField<String>('name_country');
  set nameCountry(String? value) => setField<String>('name_country', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get nameCategory => getField<String>('name_category');
  set nameCategory(String? value) => setField<String>('name_category', value);

  bool? get shipping => getField<bool>('shipping');
  set shipping(bool? value) => setField<bool>('shipping', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  int? get reviews => getField<int>('reviews');
  set reviews(int? value) => setField<int>('reviews', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  List<int> get clients => getListField<int>('clients');
  set clients(List<int>? value) => setListField<int>('clients', value);

  double? get relevancy => getField<double>('relevancy');
  set relevancy(double? value) => setField<double>('relevancy', value);
}
