import '../database.dart';

class ViewHomeClient2Table extends SupabaseTable<ViewHomeClient2Row> {
  @override
  String get tableName => 'view_home_client_2';

  @override
  ViewHomeClient2Row createRow(Map<String, dynamic> data) =>
      ViewHomeClient2Row(data);
}

class ViewHomeClient2Row extends SupabaseDataRow {
  ViewHomeClient2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHomeClient2Table();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get moneySaved => getField<double>('moneySaved');
  set moneySaved(double? value) => setField<double>('moneySaved', value);

  String? get nameCountry => getField<String>('name_country');
  set nameCountry(String? value) => setField<String>('name_country', value);

  int? get companies => getField<int>('companies');
  set companies(int? value) => setField<int>('companies', value);

  int? get idPlan => getField<int>('id_plan');
  set idPlan(int? value) => setField<int>('id_plan', value);
}
