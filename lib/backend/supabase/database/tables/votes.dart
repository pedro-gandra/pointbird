import '../database.dart';

class VotesTable extends SupabaseTable<VotesRow> {
  @override
  String get tableName => 'votes';

  @override
  VotesRow createRow(Map<String, dynamic> data) => VotesRow(data);
}

class VotesRow extends SupabaseDataRow {
  VotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idOption => getField<int>('id_option')!;
  set idOption(int value) => setField<int>('id_option', value);

  int get idClient => getField<int>('id_client')!;
  set idClient(int value) => setField<int>('id_client', value);
}
