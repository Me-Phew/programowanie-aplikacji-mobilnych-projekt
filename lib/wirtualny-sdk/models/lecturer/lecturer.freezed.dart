// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lecturer _$LecturerFromJson(Map<String, dynamic> json) {
  return _Lecturer.fromJson(json);
}

/// @nodoc
mixin _$Lecturer {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "academicTitles")
  List<String> get academicTitles => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "middleName")
  String get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: "familyName")
  String get familyName => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePicture")
  dynamic get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  LecturerAddress get address => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Lecturer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerCopyWith<Lecturer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerCopyWith<$Res> {
  factory $LecturerCopyWith(Lecturer value, $Res Function(Lecturer) then) =
      _$LecturerCopyWithImpl<$Res, Lecturer>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "academicTitles") List<String> academicTitles,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "middleName") String middleName,
      @JsonKey(name: "familyName") String familyName,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "profilePicture") dynamic profilePicture,
      @JsonKey(name: "address") LecturerAddress address,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  $LecturerAddressCopyWith<$Res> get address;
}

/// @nodoc
class _$LecturerCopyWithImpl<$Res, $Val extends Lecturer>
    implements $LecturerCopyWith<$Res> {
  _$LecturerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? academicTitles = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? familyName = null,
    Object? title = null,
    Object? profilePicture = freezed,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      academicTitles: null == academicTitles
          ? _value.academicTitles
          : academicTitles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LecturerAddress,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LecturerAddressCopyWith<$Res> get address {
    return $LecturerAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LecturerImplCopyWith<$Res>
    implements $LecturerCopyWith<$Res> {
  factory _$$LecturerImplCopyWith(
          _$LecturerImpl value, $Res Function(_$LecturerImpl) then) =
      __$$LecturerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "academicTitles") List<String> academicTitles,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "middleName") String middleName,
      @JsonKey(name: "familyName") String familyName,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "profilePicture") dynamic profilePicture,
      @JsonKey(name: "address") LecturerAddress address,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  @override
  $LecturerAddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$LecturerImplCopyWithImpl<$Res>
    extends _$LecturerCopyWithImpl<$Res, _$LecturerImpl>
    implements _$$LecturerImplCopyWith<$Res> {
  __$$LecturerImplCopyWithImpl(
      _$LecturerImpl _value, $Res Function(_$LecturerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? academicTitles = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? familyName = null,
    Object? title = null,
    Object? profilePicture = freezed,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$LecturerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      academicTitles: null == academicTitles
          ? _value._academicTitles
          : academicTitles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LecturerAddress,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerImpl implements _Lecturer {
  const _$LecturerImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "academicTitles")
      required final List<String> academicTitles,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "middleName") required this.middleName,
      @JsonKey(name: "familyName") required this.familyName,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "profilePicture") required this.profilePicture,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "phoneNumber") required this.phoneNumber,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt})
      : _academicTitles = academicTitles;

  factory _$LecturerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  final List<String> _academicTitles;
  @override
  @JsonKey(name: "academicTitles")
  List<String> get academicTitles {
    if (_academicTitles is EqualUnmodifiableListView) return _academicTitles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_academicTitles);
  }

  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "middleName")
  final String middleName;
  @override
  @JsonKey(name: "familyName")
  final String familyName;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "profilePicture")
  final dynamic profilePicture;
  @override
  @JsonKey(name: "address")
  final LecturerAddress address;
  @override
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Lecturer(id: $id, academicTitles: $academicTitles, firstName: $firstName, middleName: $middleName, familyName: $familyName, title: $title, profilePicture: $profilePicture, address: $address, phoneNumber: $phoneNumber, email: $email, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._academicTitles, _academicTitles) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_academicTitles),
      firstName,
      middleName,
      familyName,
      title,
      const DeepCollectionEquality().hash(profilePicture),
      address,
      phoneNumber,
      email,
      updatedAt,
      createdAt);

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerImplCopyWith<_$LecturerImpl> get copyWith =>
      __$$LecturerImplCopyWithImpl<_$LecturerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerImplToJson(
      this,
    );
  }
}

abstract class _Lecturer implements Lecturer {
  const factory _Lecturer(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "academicTitles")
      required final List<String> academicTitles,
      @JsonKey(name: "firstName") required final String firstName,
      @JsonKey(name: "middleName") required final String middleName,
      @JsonKey(name: "familyName") required final String familyName,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "profilePicture") required final dynamic profilePicture,
      @JsonKey(name: "address") required final LecturerAddress address,
      @JsonKey(name: "phoneNumber") required final String phoneNumber,
      @JsonKey(name: "email") required final String email,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "createdAt")
      required final DateTime createdAt}) = _$LecturerImpl;

  factory _Lecturer.fromJson(Map<String, dynamic> json) =
      _$LecturerImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "academicTitles")
  List<String> get academicTitles;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "middleName")
  String get middleName;
  @override
  @JsonKey(name: "familyName")
  String get familyName;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "profilePicture")
  dynamic get profilePicture;
  @override
  @JsonKey(name: "address")
  LecturerAddress get address;
  @override
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of Lecturer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerImplCopyWith<_$LecturerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
