import '../database.dart';

class UserDataTable extends SupabaseTable<UserDataRow> {
  @override
  String get tableName => 'user_data';

  @override
  UserDataRow createRow(Map<String, dynamic> data) => UserDataRow(data);
}

class UserDataRow extends SupabaseDataRow {
  UserDataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserDataTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);

  String? get businessName => getField<String>('business_name');
  set businessName(String? value) => setField<String>('business_name', value);

  String? get businessType => getField<String>('business_type');
  set businessType(String? value) => setField<String>('business_type', value);

  int? get noPosts => getField<int>('no_posts');
  set noPosts(int? value) => setField<int>('no_posts', value);

  int? get noFollowers => getField<int>('no_followers');
  set noFollowers(int? value) => setField<int>('no_followers', value);

  int? get noFollowing => getField<int>('no_following');
  set noFollowing(int? value) => setField<int>('no_following', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);
}
