// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "middleName")
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: "familyName")
  String get familyName => throw _privateConstructorUsedError;
  @JsonKey(name: "coursesOfStudy")
  List<CourseOfStudy> get coursesOfStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePicture")
  ProfilePicture? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "dateOfBirth")
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "indexNumber")
  String get indexNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "loginAttempts")
  int get loginAttempts => throw _privateConstructorUsedError;

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "middleName") String? middleName,
      @JsonKey(name: "familyName") String familyName,
      @JsonKey(name: "coursesOfStudy") List<CourseOfStudy> coursesOfStudy,
      @JsonKey(name: "profilePicture") ProfilePicture? profilePicture,
      @JsonKey(name: "dateOfBirth") DateTime dateOfBirth,
      @JsonKey(name: "indexNumber") String indexNumber,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "loginAttempts") int loginAttempts});

  $ProfilePictureCopyWith<$Res>? get profilePicture;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? familyName = null,
    Object? coursesOfStudy = null,
    Object? profilePicture = freezed,
    Object? dateOfBirth = null,
    Object? indexNumber = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? loginAttempts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      coursesOfStudy: null == coursesOfStudy
          ? _value.coursesOfStudy
          : coursesOfStudy // ignore: cast_nullable_to_non_nullable
              as List<CourseOfStudy>,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as ProfilePicture?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indexNumber: null == indexNumber
          ? _value.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loginAttempts: null == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfilePictureCopyWith<$Res>? get profilePicture {
    if (_value.profilePicture == null) {
      return null;
    }

    return $ProfilePictureCopyWith<$Res>(_value.profilePicture!, (value) {
      return _then(_value.copyWith(profilePicture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "middleName") String? middleName,
      @JsonKey(name: "familyName") String familyName,
      @JsonKey(name: "coursesOfStudy") List<CourseOfStudy> coursesOfStudy,
      @JsonKey(name: "profilePicture") ProfilePicture? profilePicture,
      @JsonKey(name: "dateOfBirth") DateTime dateOfBirth,
      @JsonKey(name: "indexNumber") String indexNumber,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "loginAttempts") int loginAttempts});

  @override
  $ProfilePictureCopyWith<$Res>? get profilePicture;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? familyName = null,
    Object? coursesOfStudy = null,
    Object? profilePicture = freezed,
    Object? dateOfBirth = null,
    Object? indexNumber = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? loginAttempts = null,
  }) {
    return _then(_$StudentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      coursesOfStudy: null == coursesOfStudy
          ? _value._coursesOfStudy
          : coursesOfStudy // ignore: cast_nullable_to_non_nullable
              as List<CourseOfStudy>,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as ProfilePicture?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indexNumber: null == indexNumber
          ? _value.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loginAttempts: null == loginAttempts
          ? _value.loginAttempts
          : loginAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "middleName") required this.middleName,
      @JsonKey(name: "familyName") required this.familyName,
      @JsonKey(name: "coursesOfStudy")
      required final List<CourseOfStudy> coursesOfStudy,
      @JsonKey(name: "profilePicture") this.profilePicture,
      @JsonKey(name: "dateOfBirth") required this.dateOfBirth,
      @JsonKey(name: "indexNumber") required this.indexNumber,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "loginAttempts") required this.loginAttempts})
      : _coursesOfStudy = coursesOfStudy;

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "middleName")
  final String? middleName;
  @override
  @JsonKey(name: "familyName")
  final String familyName;
  final List<CourseOfStudy> _coursesOfStudy;
  @override
  @JsonKey(name: "coursesOfStudy")
  List<CourseOfStudy> get coursesOfStudy {
    if (_coursesOfStudy is EqualUnmodifiableListView) return _coursesOfStudy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesOfStudy);
  }

  @override
  @JsonKey(name: "profilePicture")
  final ProfilePicture? profilePicture;
  @override
  @JsonKey(name: "dateOfBirth")
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: "indexNumber")
  final String indexNumber;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "loginAttempts")
  final int loginAttempts;

  @override
  String toString() {
    return 'Student(id: $id, username: $username, firstName: $firstName, middleName: $middleName, familyName: $familyName, coursesOfStudy: $coursesOfStudy, profilePicture: $profilePicture, dateOfBirth: $dateOfBirth, indexNumber: $indexNumber, updatedAt: $updatedAt, createdAt: $createdAt, loginAttempts: $loginAttempts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            const DeepCollectionEquality()
                .equals(other._coursesOfStudy, _coursesOfStudy) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.indexNumber, indexNumber) ||
                other.indexNumber == indexNumber) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.loginAttempts, loginAttempts) ||
                other.loginAttempts == loginAttempts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      firstName,
      middleName,
      familyName,
      const DeepCollectionEquality().hash(_coursesOfStudy),
      profilePicture,
      dateOfBirth,
      indexNumber,
      updatedAt,
      createdAt,
      loginAttempts);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "firstName") required final String firstName,
          @JsonKey(name: "middleName") required final String? middleName,
          @JsonKey(name: "familyName") required final String familyName,
          @JsonKey(name: "coursesOfStudy")
          required final List<CourseOfStudy> coursesOfStudy,
          @JsonKey(name: "profilePicture") final ProfilePicture? profilePicture,
          @JsonKey(name: "dateOfBirth") required final DateTime dateOfBirth,
          @JsonKey(name: "indexNumber") required final String indexNumber,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "loginAttempts") required final int loginAttempts}) =
      _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "middleName")
  String? get middleName;
  @override
  @JsonKey(name: "familyName")
  String get familyName;
  @override
  @JsonKey(name: "coursesOfStudy")
  List<CourseOfStudy> get coursesOfStudy;
  @override
  @JsonKey(name: "profilePicture")
  ProfilePicture? get profilePicture;
  @override
  @JsonKey(name: "dateOfBirth")
  DateTime get dateOfBirth;
  @override
  @JsonKey(name: "indexNumber")
  String get indexNumber;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "loginAttempts")
  int get loginAttempts;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
