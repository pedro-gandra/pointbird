import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  int? get idManager => getField<int>('id_manager');
  set idManager(int? value) => setField<int>('id_manager', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
