import '../database.dart';

class CurrenciesTable extends SupabaseTable<CurrenciesRow> {
  @override
  String get tableName => 'currencies';

  @override
  CurrenciesRow createRow(Map<String, dynamic> data) => CurrenciesRow(data);
}

class CurrenciesRow extends SupabaseDataRow {
  CurrenciesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurrenciesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get symbol => getField<String>('symbol');
  set symbol(String? value) => setField<String>('symbol', value);

  double? get rateToUsd => getField<double>('rate_to_usd');
  set rateToUsd(double? value) => setField<double>('rate_to_usd', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
