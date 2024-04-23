import '../database.dart';

class ClientCompaniesTable extends SupabaseTable<ClientCompaniesRow> {
  @override
  String get tableName => 'client_companies';

  @override
  ClientCompaniesRow createRow(Map<String, dynamic> data) =>
      ClientCompaniesRow(data);
}

class ClientCompaniesRow extends SupabaseDataRow {
  ClientCompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientCompaniesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get currentPoints => getField<int>('current_points')!;
  set currentPoints(int value) => setField<int>('current_points', value);

  int get idClient => getField<int>('id_client')!;
  set idClient(int value) => setField<int>('id_client', value);

  int get idCompany => getField<int>('id_company')!;
  set idCompany(int value) => setField<int>('id_company', value);

  DateTime? get lastCheckIn => getField<DateTime>('lastCheckIn');
  set lastCheckIn(DateTime? value) => setField<DateTime>('lastCheckIn', value);

  int get checkInStreak => getField<int>('checkInStreak')!;
  set checkInStreak(int value) => setField<int>('checkInStreak', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
