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

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get postedBy => getField<String>('posted_by')!;
  set postedBy(String value) => setField<String>('posted_by', value);

  String? get imagePath => getField<String>('image_path');
  set imagePath(String? value) => setField<String>('image_path', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get likeCount => getField<int>('like_count');
  set likeCount(int? value) => setField<int>('like_count', value);

  int? get commentCount => getField<int>('comment_count');
  set commentCount(int? value) => setField<int>('comment_count', value);

  bool? get shop => getField<bool>('shop');
  set shop(bool? value) => setField<bool>('shop', value);
}
