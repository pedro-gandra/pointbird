import '../database.dart';

class ViewPostsViewTable extends SupabaseTable<ViewPostsViewRow> {
  @override
  String get tableName => 'view_posts_view';

  @override
  ViewPostsViewRow createRow(Map<String, dynamic> data) =>
      ViewPostsViewRow(data);
}

class ViewPostsViewRow extends SupabaseDataRow {
  ViewPostsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPostsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

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

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  DateTime? get pointExpiration => getField<DateTime>('pointExpiration');
  set pointExpiration(DateTime? value) =>
      setField<DateTime>('pointExpiration', value);

  List<int> get idRelation => getListField<int>('id_relation');
  set idRelation(List<int>? value) => setListField<int>('id_relation', value);

  List<int> get idReference => getListField<int>('id_reference');
  set idReference(List<int>? value) => setListField<int>('id_reference', value);
}
