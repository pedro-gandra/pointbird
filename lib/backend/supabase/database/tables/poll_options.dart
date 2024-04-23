import '../database.dart';

class PollOptionsTable extends SupabaseTable<PollOptionsRow> {
  @override
  String get tableName => 'pollOptions';

  @override
  PollOptionsRow createRow(Map<String, dynamic> data) => PollOptionsRow(data);
}

class PollOptionsRow extends SupabaseDataRow {
  PollOptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PollOptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idPost => getField<int>('id_post')!;
  set idPost(int value) => setField<int>('id_post', value);

  String get text => getField<String>('text')!;
  set text(String value) => setField<String>('text', value);

  int get order => getField<int>('order')!;
  set order(int value) => setField<int>('order', value);
}
