import '../database.dart';

class UserFollowerRelationshipTable
    extends SupabaseTable<UserFollowerRelationshipRow> {
  @override
  String get tableName => 'user_follower_relationship';

  @override
  UserFollowerRelationshipRow createRow(Map<String, dynamic> data) =>
      UserFollowerRelationshipRow(data);
}

class UserFollowerRelationshipRow extends SupabaseDataRow {
  UserFollowerRelationshipRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserFollowerRelationshipTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get followedBy => getField<String>('followed_by')!;
  set followedBy(String value) => setField<String>('followed_by', value);

  String get followedTo => getField<String>('followed_to')!;
  set followedTo(String value) => setField<String>('followed_to', value);
}
