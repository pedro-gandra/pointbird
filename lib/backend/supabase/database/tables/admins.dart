import '../database.dart';

class AdminsTable extends SupabaseTable<AdminsRow> {
  @override
  String get tableName => 'admins';

  @override
  AdminsRow createRow(Map<String, dynamic> data) => AdminsRow(data);
}

class AdminsRow extends SupabaseDataRow {
  AdminsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get emailUser => getField<String>('email_user');
  set emailUser(String? value) => setField<String>('email_user', value);
}
