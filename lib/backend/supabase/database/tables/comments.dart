import '../database.dart';

class CommentsTable extends SupabaseTable<CommentsRow> {
  @override
  String get tableName => 'comments';

  @override
  CommentsRow createRow(Map<String, dynamic> data) => CommentsRow(data);
}

class CommentsRow extends SupabaseDataRow {
  CommentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

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
}
