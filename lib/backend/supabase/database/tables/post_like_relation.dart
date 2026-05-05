import '../database.dart';

class PostLikeRelationTable extends SupabaseTable<PostLikeRelationRow> {
  @override
  String get tableName => 'post_like_relation';

  @override
  PostLikeRelationRow createRow(Map<String, dynamic> data) =>
      PostLikeRelationRow(data);
}

class PostLikeRelationRow extends SupabaseDataRow {
  PostLikeRelationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostLikeRelationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);

  String? get likedBy => getField<String>('liked_by');
  set likedBy(String? value) => setField<String>('liked_by', value);
}
