import '../database.dart';

class ShopTable extends SupabaseTable<ShopRow> {
  @override
  String get tableName => 'shop';

  @override
  ShopRow createRow(Map<String, dynamic> data) => ShopRow(data);
}

class ShopRow extends SupabaseDataRow {
  ShopRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShopTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);
}
