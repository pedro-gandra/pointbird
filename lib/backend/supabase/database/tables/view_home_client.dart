import '../database.dart';

class ViewHomeClientTable extends SupabaseTable<ViewHomeClientRow> {
  @override
  String get tableName => 'view_home_client';

  @override
  ViewHomeClientRow createRow(Map<String, dynamic> data) =>
      ViewHomeClientRow(data);
}

class ViewHomeClientRow extends SupabaseDataRow {
  ViewHomeClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHomeClientTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  List<int> get checkIn => getListField<int>('checkIn');
  set checkIn(List<int>? value) => setListField<int>('checkIn', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get percentageLimit => getField<int>('percentageLimit');
  set percentageLimit(int? value) => setField<int>('percentageLimit', value);

  int? get idReference => getField<int>('id_reference');
  set idReference(int? value) => setField<int>('id_reference', value);

  int? get idCompany => getField<int>('id_company');
  set idCompany(int? value) => setField<int>('id_company', value);

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  DateTime? get lastCheckIn => getField<DateTime>('lastCheckIn');
  set lastCheckIn(DateTime? value) => setField<DateTime>('lastCheckIn', value);

  int? get currentPoints => getField<int>('current_points');
  set currentPoints(int? value) => setField<int>('current_points', value);

  int? get checkInStreak => getField<int>('checkInStreak');
  set checkInStreak(int? value) => setField<int>('checkInStreak', value);
}
