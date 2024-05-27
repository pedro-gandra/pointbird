import '../database.dart';

class NotificationManagerTable extends SupabaseTable<NotificationManagerRow> {
  @override
  String get tableName => 'notificationManager';

  @override
  NotificationManagerRow createRow(Map<String, dynamic> data) =>
      NotificationManagerRow(data);
}

class NotificationManagerRow extends SupabaseDataRow {
  NotificationManagerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationManagerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  int? get idCompany => getField<int>('id_company');
  set idCompany(int? value) => setField<int>('id_company', value);

  bool? get newPost => getField<bool>('newPost');
  set newPost(bool? value) => setField<bool>('newPost', value);

  bool? get couponUpdate => getField<bool>('couponUpdate');
  set couponUpdate(bool? value) => setField<bool>('couponUpdate', value);

  bool? get pointbird => getField<bool>('pointbird');
  set pointbird(bool? value) => setField<bool>('pointbird', value);

  bool? get postInt => getField<bool>('postInt');
  set postInt(bool? value) => setField<bool>('postInt', value);

  bool? get follow => getField<bool>('follow');
  set follow(bool? value) => setField<bool>('follow', value);

  bool? get couponGen => getField<bool>('couponGen');
  set couponGen(bool? value) => setField<bool>('couponGen', value);

  bool? get checkIn => getField<bool>('checkIn');
  set checkIn(bool? value) => setField<bool>('checkIn', value);

  DateTime? get lastOpen => getField<DateTime>('lastOpen');
  set lastOpen(DateTime? value) => setField<DateTime>('lastOpen', value);
}
