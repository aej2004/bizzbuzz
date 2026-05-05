import '../database.dart';

class FullCommentsViewTable extends SupabaseTable<FullCommentsViewRow> {
  @override
  String get tableName => 'full_comments_view';

  @override
  FullCommentsViewRow createRow(Map<String, dynamic> data) =>
      FullCommentsViewRow(data);
}

class FullCommentsViewRow extends SupabaseDataRow {
  FullCommentsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FullCommentsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);

  int? get parentComment => getField<int>('parent_comment');
  set parentComment(int? value) => setField<int>('parent_comment', value);

  String? get commentedBy => getField<String>('commented_by');
  set commentedBy(String? value) => setField<String>('commented_by', value);

  String? get bodyText => getField<String>('body_text');
  set bodyText(String? value) => setField<String>('body_text', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);
}
