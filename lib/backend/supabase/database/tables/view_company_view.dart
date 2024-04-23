import '../database.dart';

class ViewCompanyViewTable extends SupabaseTable<ViewCompanyViewRow> {
  @override
  String get tableName => 'view_company_view';

  @override
  ViewCompanyViewRow createRow(Map<String, dynamic> data) =>
      ViewCompanyViewRow(data);
}

class ViewCompanyViewRow extends SupabaseDataRow {
  ViewCompanyViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewCompanyViewTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);

  List<int> get checkIn => getListField<int>('checkIn');
  set checkIn(List<int>? value) => setListField<int>('checkIn', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get nameCountry => getField<String>('name_country');
  set nameCountry(String? value) => setField<String>('name_country', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);

  int? get reviews => getField<int>('reviews');
  set reviews(int? value) => setField<int>('reviews', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  int? get idReference => getField<int>('id_reference');
  set idReference(int? value) => setField<int>('id_reference', value);

  int? get idCompany => getField<int>('id_company');
  set idCompany(int? value) => setField<int>('id_company', value);

  int? get idClient => getField<int>('id_client');
  set idClient(int? value) => setField<int>('id_client', value);

  DateTime? get lastCheckIn => getField<DateTime>('lastCheckIn');
  set lastCheckIn(DateTime? value) => setField<DateTime>('lastCheckIn', value);

  int? get currentPoints => getField<int>('current_points');
  set currentPoints(int? value) => setField<int>('current_points', value);

  int? get checkInStreak => getField<int>('checkInStreak');
  set checkInStreak(int? value) => setField<int>('checkInStreak', value);

  double? get clientRating => getField<double>('client_rating');
  set clientRating(double? value) => setField<double>('client_rating', value);
}
