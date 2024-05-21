import '../database.dart';

class PostsTable extends SupabaseTable<PostsRow> {
  @override
  String get tableName => 'posts';

  @override
  PostsRow createRow(Map<String, dynamic> data) => PostsRow(data);
}

class PostsRow extends SupabaseDataRow {
  PostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idCompany => getField<int>('id_company')!;
  set idCompany(int value) => setField<int>('id_company', value);

  int get actionPoints => getField<int>('actionPoints')!;
  set actionPoints(int value) => setField<int>('actionPoints', value);

  String get postType => getField<String>('postType')!;
  set postType(String value) => setField<String>('postType', value);

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

  double? get imagePropotion => getField<double>('imagePropotion');
  set imagePropotion(double? value) =>
      setField<double>('imagePropotion', value);

  int? get imageWidth => getField<int>('imageWidth');
  set imageWidth(int? value) => setField<int>('imageWidth', value);
}
