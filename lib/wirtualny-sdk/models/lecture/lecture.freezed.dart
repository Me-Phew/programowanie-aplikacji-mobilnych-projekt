// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return _Lecture.fromJson(json);
}

/// @nodoc
mixin _$Lecture {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "lecturer")
  int get lecturer => throw _privateConstructorUsedError;
  @JsonKey(name: "form")
  String get form => throw _privateConstructorUsedError;
  @JsonKey(name: "startTime")
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfHours")
  int get numberOfHours => throw _privateConstructorUsedError;
  @JsonKey(name: "classroom")
  int get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: "isOnline")
  bool get isOnline => throw _privateConstructorUsedError;
  @JsonKey(name: "endTime")
  DateTime get endTime => throw _privateConstructorUsedError;

  /// Serializes this Lecture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res, Lecture>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lecturer") int lecturer,
      @JsonKey(name: "form") String form,
      @JsonKey(name: "startTime") DateTime startTime,
      @JsonKey(name: "numberOfHours") int numberOfHours,
      @JsonKey(name: "classroom") int classroom,
      @JsonKey(name: "isOnline") bool isOnline,
      @JsonKey(name: "endTime") DateTime endTime});
}

/// @nodoc
class _$LectureCopyWithImpl<$Res, $Val extends Lecture>
    implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecturer = null,
    Object? form = null,
    Object? startTime = null,
    Object? numberOfHours = null,
    Object? classroom = null,
    Object? isOnline = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as int,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numberOfHours: null == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureImplCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$$LectureImplCopyWith(
          _$LectureImpl value, $Res Function(_$LectureImpl) then) =
      __$$LectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "lecturer") int lecturer,
      @JsonKey(name: "form") String form,
      @JsonKey(name: "startTime") DateTime startTime,
      @JsonKey(name: "numberOfHours") int numberOfHours,
      @JsonKey(name: "classroom") int classroom,
      @JsonKey(name: "isOnline") bool isOnline,
      @JsonKey(name: "endTime") DateTime endTime});
}

/// @nodoc
class __$$LectureImplCopyWithImpl<$Res>
    extends _$LectureCopyWithImpl<$Res, _$LectureImpl>
    implements _$$LectureImplCopyWith<$Res> {
  __$$LectureImplCopyWithImpl(
      _$LectureImpl _value, $Res Function(_$LectureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecturer = null,
    Object? form = null,
    Object? startTime = null,
    Object? numberOfHours = null,
    Object? classroom = null,
    Object? isOnline = null,
    Object? endTime = null,
  }) {
    return _then(_$LectureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as int,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numberOfHours: null == numberOfHours
          ? _value.numberOfHours
          : numberOfHours // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LectureImpl implements _Lecture {
  const _$LectureImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "lecturer") required this.lecturer,
      @JsonKey(name: "form") required this.form,
      @JsonKey(name: "startTime") required this.startTime,
      @JsonKey(name: "numberOfHours") required this.numberOfHours,
      @JsonKey(name: "classroom") required this.classroom,
      @JsonKey(name: "isOnline") required this.isOnline,
      @JsonKey(name: "endTime") required this.endTime});

  factory _$LectureImpl.fromJson(Map<String, dynamic> json) =>
      _$$LectureImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "lecturer")
  final int lecturer;
  @override
  @JsonKey(name: "form")
  final String form;
  @override
  @JsonKey(name: "startTime")
  final DateTime startTime;
  @override
  @JsonKey(name: "numberOfHours")
  final int numberOfHours;
  @override
  @JsonKey(name: "classroom")
  final int classroom;
  @override
  @JsonKey(name: "isOnline")
  final bool isOnline;
  @override
  @JsonKey(name: "endTime")
  final DateTime endTime;

  @override
  String toString() {
    return 'Lecture(id: $id, name: $name, lecturer: $lecturer, form: $form, startTime: $startTime, numberOfHours: $numberOfHours, classroom: $classroom, isOnline: $isOnline, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.numberOfHours, numberOfHours) ||
                other.numberOfHours == numberOfHours) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer, form,
      startTime, numberOfHours, classroom, isOnline, endTime);

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      __$$LectureImplCopyWithImpl<_$LectureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureImplToJson(
      this,
    );
  }
}

abstract class _Lecture implements Lecture {
  const factory _Lecture(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "lecturer") required final int lecturer,
          @JsonKey(name: "form") required final String form,
          @JsonKey(name: "startTime") required final DateTime startTime,
          @JsonKey(name: "numberOfHours") required final int numberOfHours,
          @JsonKey(name: "classroom") required final int classroom,
          @JsonKey(name: "isOnline") required final bool isOnline,
          @JsonKey(name: "endTime") required final DateTime endTime}) =
      _$LectureImpl;

  factory _Lecture.fromJson(Map<String, dynamic> json) = _$LectureImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "lecturer")
  int get lecturer;
  @override
  @JsonKey(name: "form")
  String get form;
  @override
  @JsonKey(name: "startTime")
  DateTime get startTime;
  @override
  @JsonKey(name: "numberOfHours")
  int get numberOfHours;
  @override
  @JsonKey(name: "classroom")
  int get classroom;
  @override
  @JsonKey(name: "isOnline")
  bool get isOnline;
  @override
  @JsonKey(name: "endTime")
  DateTime get endTime;

  /// Create a copy of Lecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureImplCopyWith<_$LectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
