import '../database.dart';

class ViewPointsStatementTable extends SupabaseTable<ViewPointsStatementRow> {
  @override
  String get tableName => 'view_points_statement';

  @override
  ViewPointsStatementRow createRow(Map<String, dynamic> data) =>
      ViewPointsStatementRow(data);
}

class ViewPointsStatementRow extends SupabaseDataRow {
  ViewPointsStatementRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPointsStatementTable();

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get idReference => getField<int>('id_reference');
  set idReference(int? value) => setField<int>('id_reference', value);

  List<int> get pointChanges => getListField<int>('point_changes');
  set pointChanges(List<int>? value) =>
      setListField<int>('point_changes', value);

  List<String> get events => getListField<String>('events');
  set events(List<String>? value) => setListField<String>('events', value);
}
