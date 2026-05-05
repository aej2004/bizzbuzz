// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? userId,
    String? createdAt,
    String? username,
    String? bio,
    String? businessName,
    String? businessType,
    int? noPosts,
    int? noFollowers,
    int? noFollowing,
    String? profilePic,
  })  : _userId = userId,
        _createdAt = createdAt,
        _username = username,
        _bio = bio,
        _businessName = businessName,
        _businessType = businessType,
        _noPosts = noPosts,
        _noFollowers = noFollowers,
        _noFollowing = noFollowing,
        _profilePic = profilePic;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;

  bool hasBio() => _bio != null;

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;

  bool hasBusinessName() => _businessName != null;

  // "business_type" field.
  String? _businessType;
  String get businessType => _businessType ?? '';
  set businessType(String? val) => _businessType = val;

  bool hasBusinessType() => _businessType != null;

  // "no_posts" field.
  int? _noPosts;
  int get noPosts => _noPosts ?? 0;
  set noPosts(int? val) => _noPosts = val;

  void incrementNoPosts(int amount) => noPosts = noPosts + amount;

  bool hasNoPosts() => _noPosts != null;

  // "no_followers" field.
  int? _noFollowers;
  int get noFollowers => _noFollowers ?? 0;
  set noFollowers(int? val) => _noFollowers = val;

  void incrementNoFollowers(int amount) => noFollowers = noFollowers + amount;

  bool hasNoFollowers() => _noFollowers != null;

  // "no_following" field.
  int? _noFollowing;
  int get noFollowing => _noFollowing ?? 0;
  set noFollowing(int? val) => _noFollowing = val;

  void incrementNoFollowing(int amount) => noFollowing = noFollowing + amount;

  bool hasNoFollowing() => _noFollowing != null;

  // "profile_pic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  set profilePic(String? val) => _profilePic = val;

  bool hasProfilePic() => _profilePic != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userId: data['user_id'] as String?,
        createdAt: data['created_at'] as String?,
        username: data['username'] as String?,
        bio: data['bio'] as String?,
        businessName: data['business_name'] as String?,
        businessType: data['business_type'] as String?,
        noPosts: castToType<int>(data['no_posts']),
        noFollowers: castToType<int>(data['no_followers']),
        noFollowing: castToType<int>(data['no_following']),
        profilePic: data['profile_pic'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'created_at': _createdAt,
        'username': _username,
        'bio': _bio,
        'business_name': _businessName,
        'business_type': _businessType,
        'no_posts': _noPosts,
        'no_followers': _noFollowers,
        'no_following': _noFollowing,
        'profile_pic': _profilePic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'business_name': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'business_type': serializeParam(
          _businessType,
          ParamType.String,
        ),
        'no_posts': serializeParam(
          _noPosts,
          ParamType.int,
        ),
        'no_followers': serializeParam(
          _noFollowers,
          ParamType.int,
        ),
        'no_following': serializeParam(
          _noFollowing,
          ParamType.int,
        ),
        'profile_pic': serializeParam(
          _profilePic,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        businessName: deserializeParam(
          data['business_name'],
          ParamType.String,
          false,
        ),
        businessType: deserializeParam(
          data['business_type'],
          ParamType.String,
          false,
        ),
        noPosts: deserializeParam(
          data['no_posts'],
          ParamType.int,
          false,
        ),
        noFollowers: deserializeParam(
          data['no_followers'],
          ParamType.int,
          false,
        ),
        noFollowing: deserializeParam(
          data['no_following'],
          ParamType.int,
          false,
        ),
        profilePic: deserializeParam(
          data['profile_pic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        username == other.username &&
        bio == other.bio &&
        businessName == other.businessName &&
        businessType == other.businessType &&
        noPosts == other.noPosts &&
        noFollowers == other.noFollowers &&
        noFollowing == other.noFollowing &&
        profilePic == other.profilePic;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        createdAt,
        username,
        bio,
        businessName,
        businessType,
        noPosts,
        noFollowers,
        noFollowing,
        profilePic
      ]);
}

UserStruct createUserStruct({
  String? userId,
  String? createdAt,
  String? username,
  String? bio,
  String? businessName,
  String? businessType,
  int? noPosts,
  int? noFollowers,
  int? noFollowing,
  String? profilePic,
}) =>
    UserStruct(
      userId: userId,
      createdAt: createdAt,
      username: username,
      bio: bio,
      businessName: businessName,
      businessType: businessType,
      noPosts: noPosts,
      noFollowers: noFollowers,
      noFollowing: noFollowing,
      profilePic: profilePic,
    );
