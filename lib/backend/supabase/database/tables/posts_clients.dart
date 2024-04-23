import '../database.dart';

class PostsClientsTable extends SupabaseTable<PostsClientsRow> {
  @override
  String get tableName => 'posts_clients';

  @override
  PostsClientsRow createRow(Map<String, dynamic> data) => PostsClientsRow(data);
}

class PostsClientsRow extends SupabaseDataRow {
  PostsClientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostsClientsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idPost => getField<int>('id_post')!;
  set idPost(int value) => setField<int>('id_post', value);

  int get idReference => getField<int>('id_reference')!;
  set idReference(int value) => setField<int>('id_reference', value);
}
