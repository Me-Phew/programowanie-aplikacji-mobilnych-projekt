// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
mixin _$Classroom {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "faculty")
  dynamic get faculty => throw _privateConstructorUsedError;
  @JsonKey(name: "floorNumber")
  int get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "roomNumber")
  int get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Classroom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "faculty") dynamic faculty,
      @JsonKey(name: "floorNumber") int floorNumber,
      @JsonKey(name: "roomNumber") int roomNumber,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? faculty = freezed,
    Object? floorNumber = null,
    Object? roomNumber = null,
    Object? title = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$ClassroomImplCopyWith<$Res>
    implements $ClassroomCopyWith<$Res> {
  factory _$$ClassroomImplCopyWith(
          _$ClassroomImpl value, $Res Function(_$ClassroomImpl) then) =
      __$$ClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "faculty") dynamic faculty,
      @JsonKey(name: "floorNumber") int floorNumber,
      @JsonKey(name: "roomNumber") int roomNumber,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class __$$ClassroomImplCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$ClassroomImpl>
    implements _$$ClassroomImplCopyWith<$Res> {
  __$$ClassroomImplCopyWithImpl(
      _$ClassroomImpl _value, $Res Function(_$ClassroomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? faculty = freezed,
    Object? floorNumber = null,
    Object? roomNumber = null,
    Object? title = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ClassroomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$ClassroomImpl implements _Classroom {
  const _$ClassroomImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "faculty") required this.faculty,
      @JsonKey(name: "floorNumber") required this.floorNumber,
      @JsonKey(name: "roomNumber") required this.roomNumber,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$ClassroomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "faculty")
  final dynamic faculty;
  @override
  @JsonKey(name: "floorNumber")
  final int floorNumber;
  @override
  @JsonKey(name: "roomNumber")
  final int roomNumber;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Classroom(id: $id, faculty: $faculty, floorNumber: $floorNumber, roomNumber: $roomNumber, title: $title, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.faculty, faculty) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.title, title) || other.title == title) &&
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
      const DeepCollectionEquality().hash(faculty),
      floorNumber,
      roomNumber,
      title,
      updatedAt,
      createdAt);

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      __$$ClassroomImplCopyWithImpl<_$ClassroomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomImplToJson(
      this,
    );
  }
}

abstract class _Classroom implements Classroom {
  const factory _Classroom(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "faculty") required final dynamic faculty,
          @JsonKey(name: "floorNumber") required final int floorNumber,
          @JsonKey(name: "roomNumber") required final int roomNumber,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt}) =
      _$ClassroomImpl;

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$ClassroomImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "faculty")
  dynamic get faculty;
  @override
  @JsonKey(name: "floorNumber")
  int get floorNumber;
  @override
  @JsonKey(name: "roomNumber")
  int get roomNumber;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
