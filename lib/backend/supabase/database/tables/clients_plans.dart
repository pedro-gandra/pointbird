import '../database.dart';

class ClientsPlansTable extends SupabaseTable<ClientsPlansRow> {
  @override
  String get tableName => 'clients_plans';

  @override
  ClientsPlansRow createRow(Map<String, dynamic> data) => ClientsPlansRow(data);
}

class ClientsPlansRow extends SupabaseDataRow {
  ClientsPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsPlansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  int? get idPlan => getField<int>('id_plan');
  set idPlan(int? value) => setField<int>('id_plan', value);

  DateTime? get expiration => getField<DateTime>('expiration');
  set expiration(DateTime? value) => setField<DateTime>('expiration', value);
}
