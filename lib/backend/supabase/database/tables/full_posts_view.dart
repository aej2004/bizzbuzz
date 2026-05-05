import '../database.dart';

class FullPostsViewTable extends SupabaseTable<FullPostsViewRow> {
  @override
  String get tableName => 'full_posts_view';

  @override
  FullPostsViewRow createRow(Map<String, dynamic> data) =>
      FullPostsViewRow(data);
}

class FullPostsViewRow extends SupabaseDataRow {
  FullPostsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FullPostsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get postedBy => getField<String>('posted_by');
  set postedBy(String? value) => setField<String>('posted_by', value);

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

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get profilePic => getField<String>('profile_pic');
  set profilePic(String? value) => setField<String>('profile_pic', value);
}
