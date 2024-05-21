import '../database.dart';

class ViewPostsPollClientTable extends SupabaseTable<ViewPostsPollClientRow> {
  @override
  String get tableName => 'view_posts_poll_client';

  @override
  ViewPostsPollClientRow createRow(Map<String, dynamic> data) =>
      ViewPostsPollClientRow(data);
}

class ViewPostsPollClientRow extends SupabaseDataRow {
  ViewPostsPollClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPostsPollClientTable();

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get idCompany => getField<int>('id_company');
  set idCompany(int? value) => setField<int>('id_company', value);

  int? get actionPoints => getField<int>('actionPoints');
  set actionPoints(int? value) => setField<int>('actionPoints', value);

  String? get postType => getField<String>('postType');
  set postType(String? value) => setField<String>('postType', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  DateTime? get pointExpiration => getField<DateTime>('pointExpiration');
  set pointExpiration(DateTime? value) =>
      setField<DateTime>('pointExpiration', value);

  dynamic? get optionsInfo => getField<dynamic>('options_info');
  set optionsInfo(dynamic? value) => setField<dynamic>('options_info', value);

  bool? get clientVotedAny => getField<bool>('client_voted_any');
  set clientVotedAny(bool? value) => setField<bool>('client_voted_any', value);
}
