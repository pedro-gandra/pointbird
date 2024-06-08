import '../database.dart';

class CompaniesTable extends SupabaseTable<CompaniesRow> {
  @override
  String get tableName => 'companies';

  @override
  CompaniesRow createRow(Map<String, dynamic> data) => CompaniesRow(data);
}

class CompaniesRow extends SupabaseDataRow {
  CompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompaniesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get nameCountry => getField<String>('name_country');
  set nameCountry(String? value) => setField<String>('name_country', value);

  List<int> get checkIn => getListField<int>('checkIn');
  set checkIn(List<int>? value) => setListField<int>('checkIn', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get initialPoints => getField<int>('initialPoints');
  set initialPoints(int? value) => setField<int>('initialPoints', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  int? get percentageLimit => getField<int>('percentageLimit');
  set percentageLimit(int? value) => setField<int>('percentageLimit', value);

  bool? get shipping => getField<bool>('shipping');
  set shipping(bool? value) => setField<bool>('shipping', value);

  String? get nameCategory => getField<String>('name_category');
  set nameCategory(String? value) => setField<String>('name_category', value);

  int? get idCurrency => getField<int>('id_currency');
  set idCurrency(int? value) => setField<int>('id_currency', value);
}
