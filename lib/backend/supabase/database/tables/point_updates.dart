import '../database.dart';

class PointUpdatesTable extends SupabaseTable<PointUpdatesRow> {
  @override
  String get tableName => 'pointUpdates';

  @override
  PointUpdatesRow createRow(Map<String, dynamic> data) => PointUpdatesRow(data);
}

class PointUpdatesRow extends SupabaseDataRow {
  PointUpdatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PointUpdatesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idReference => getField<int>('id_reference')!;
  set idReference(int value) => setField<int>('id_reference', value);

  int get pointChange => getField<int>('pointChange')!;
  set pointChange(int value) => setField<int>('pointChange', value);

  String get event => getField<String>('event')!;
  set event(String value) => setField<String>('event', value);
}
