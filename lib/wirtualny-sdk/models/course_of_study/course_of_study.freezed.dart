// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_of_study.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseOfStudy _$CourseOfStudyFromJson(Map<String, dynamic> json) {
  return _CourseOfStudy.fromJson(json);
}

/// @nodoc
mixin _$CourseOfStudy {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "fieldOfStudy")
  String get fieldOfStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "faculty")
  Faculty get faculty => throw _privateConstructorUsedError;
  @JsonKey(name: "schedule")
  Schedule get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: "courseType")
  String get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: "levelOfStudy")
  String get levelOfStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "obtainedTitle")
  String get obtainedTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfSemesters")
  int get numberOfSemesters => throw _privateConstructorUsedError;
  @JsonKey(name: "currentSemester")
  int get currentSemester => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CourseOfStudy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseOfStudyCopyWith<CourseOfStudy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseOfStudyCopyWith<$Res> {
  factory $CourseOfStudyCopyWith(
          CourseOfStudy value, $Res Function(CourseOfStudy) then) =
      _$CourseOfStudyCopyWithImpl<$Res, CourseOfStudy>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "fieldOfStudy") String fieldOfStudy,
      @JsonKey(name: "faculty") Faculty faculty,
      @JsonKey(name: "schedule") Schedule schedule,
      @JsonKey(name: "courseType") String courseType,
      @JsonKey(name: "levelOfStudy") String levelOfStudy,
      @JsonKey(name: "obtainedTitle") String obtainedTitle,
      @JsonKey(name: "numberOfSemesters") int numberOfSemesters,
      @JsonKey(name: "currentSemester") int currentSemester,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "endDate") DateTime endDate,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  $FacultyCopyWith<$Res> get faculty;
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$CourseOfStudyCopyWithImpl<$Res, $Val extends CourseOfStudy>
    implements $CourseOfStudyCopyWith<$Res> {
  _$CourseOfStudyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldOfStudy = null,
    Object? faculty = null,
    Object? schedule = null,
    Object? courseType = null,
    Object? levelOfStudy = null,
    Object? obtainedTitle = null,
    Object? numberOfSemesters = null,
    Object? currentSemester = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fieldOfStudy: null == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfStudy: null == levelOfStudy
          ? _value.levelOfStudy
          : levelOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      obtainedTitle: null == obtainedTitle
          ? _value.obtainedTitle
          : obtainedTitle // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSemesters: null == numberOfSemesters
          ? _value.numberOfSemesters
          : numberOfSemesters // ignore: cast_nullable_to_non_nullable
              as int,
      currentSemester: null == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value) as $Val);
    });
  }

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseOfStudyImplCopyWith<$Res>
    implements $CourseOfStudyCopyWith<$Res> {
  factory _$$CourseOfStudyImplCopyWith(
          _$CourseOfStudyImpl value, $Res Function(_$CourseOfStudyImpl) then) =
      __$$CourseOfStudyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "fieldOfStudy") String fieldOfStudy,
      @JsonKey(name: "faculty") Faculty faculty,
      @JsonKey(name: "schedule") Schedule schedule,
      @JsonKey(name: "courseType") String courseType,
      @JsonKey(name: "levelOfStudy") String levelOfStudy,
      @JsonKey(name: "obtainedTitle") String obtainedTitle,
      @JsonKey(name: "numberOfSemesters") int numberOfSemesters,
      @JsonKey(name: "currentSemester") int currentSemester,
      @JsonKey(name: "startDate") DateTime startDate,
      @JsonKey(name: "endDate") DateTime endDate,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  @override
  $FacultyCopyWith<$Res> get faculty;
  @override
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$CourseOfStudyImplCopyWithImpl<$Res>
    extends _$CourseOfStudyCopyWithImpl<$Res, _$CourseOfStudyImpl>
    implements _$$CourseOfStudyImplCopyWith<$Res> {
  __$$CourseOfStudyImplCopyWithImpl(
      _$CourseOfStudyImpl _value, $Res Function(_$CourseOfStudyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldOfStudy = null,
    Object? faculty = null,
    Object? schedule = null,
    Object? courseType = null,
    Object? levelOfStudy = null,
    Object? obtainedTitle = null,
    Object? numberOfSemesters = null,
    Object? currentSemester = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$CourseOfStudyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fieldOfStudy: null == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      levelOfStudy: null == levelOfStudy
          ? _value.levelOfStudy
          : levelOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      obtainedTitle: null == obtainedTitle
          ? _value.obtainedTitle
          : obtainedTitle // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSemesters: null == numberOfSemesters
          ? _value.numberOfSemesters
          : numberOfSemesters // ignore: cast_nullable_to_non_nullable
              as int,
      currentSemester: null == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$CourseOfStudyImpl implements _CourseOfStudy {
  const _$CourseOfStudyImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "fieldOfStudy") required this.fieldOfStudy,
      @JsonKey(name: "faculty") required this.faculty,
      @JsonKey(name: "schedule") required this.schedule,
      @JsonKey(name: "courseType") required this.courseType,
      @JsonKey(name: "levelOfStudy") required this.levelOfStudy,
      @JsonKey(name: "obtainedTitle") required this.obtainedTitle,
      @JsonKey(name: "numberOfSemesters") required this.numberOfSemesters,
      @JsonKey(name: "currentSemester") required this.currentSemester,
      @JsonKey(name: "startDate") required this.startDate,
      @JsonKey(name: "endDate") required this.endDate,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$CourseOfStudyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseOfStudyImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "fieldOfStudy")
  final String fieldOfStudy;
  @override
  @JsonKey(name: "faculty")
  final Faculty faculty;
  @override
  @JsonKey(name: "schedule")
  final Schedule schedule;
  @override
  @JsonKey(name: "courseType")
  final String courseType;
  @override
  @JsonKey(name: "levelOfStudy")
  final String levelOfStudy;
  @override
  @JsonKey(name: "obtainedTitle")
  final String obtainedTitle;
  @override
  @JsonKey(name: "numberOfSemesters")
  final int numberOfSemesters;
  @override
  @JsonKey(name: "currentSemester")
  final int currentSemester;
  @override
  @JsonKey(name: "startDate")
  final DateTime startDate;
  @override
  @JsonKey(name: "endDate")
  final DateTime endDate;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'CourseOfStudy(id: $id, fieldOfStudy: $fieldOfStudy, faculty: $faculty, schedule: $schedule, courseType: $courseType, levelOfStudy: $levelOfStudy, obtainedTitle: $obtainedTitle, numberOfSemesters: $numberOfSemesters, currentSemester: $currentSemester, startDate: $startDate, endDate: $endDate, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseOfStudyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.levelOfStudy, levelOfStudy) ||
                other.levelOfStudy == levelOfStudy) &&
            (identical(other.obtainedTitle, obtainedTitle) ||
                other.obtainedTitle == obtainedTitle) &&
            (identical(other.numberOfSemesters, numberOfSemesters) ||
                other.numberOfSemesters == numberOfSemesters) &&
            (identical(other.currentSemester, currentSemester) ||
                other.currentSemester == currentSemester) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
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
      fieldOfStudy,
      faculty,
      schedule,
      courseType,
      levelOfStudy,
      obtainedTitle,
      numberOfSemesters,
      currentSemester,
      startDate,
      endDate,
      updatedAt,
      createdAt);

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseOfStudyImplCopyWith<_$CourseOfStudyImpl> get copyWith =>
      __$$CourseOfStudyImplCopyWithImpl<_$CourseOfStudyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseOfStudyImplToJson(
      this,
    );
  }
}

abstract class _CourseOfStudy implements CourseOfStudy {
  const factory _CourseOfStudy(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "fieldOfStudy") required final String fieldOfStudy,
      @JsonKey(name: "faculty") required final Faculty faculty,
      @JsonKey(name: "schedule") required final Schedule schedule,
      @JsonKey(name: "courseType") required final String courseType,
      @JsonKey(name: "levelOfStudy") required final String levelOfStudy,
      @JsonKey(name: "obtainedTitle") required final String obtainedTitle,
      @JsonKey(name: "numberOfSemesters") required final int numberOfSemesters,
      @JsonKey(name: "currentSemester") required final int currentSemester,
      @JsonKey(name: "startDate") required final DateTime startDate,
      @JsonKey(name: "endDate") required final DateTime endDate,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "createdAt")
      required final DateTime createdAt}) = _$CourseOfStudyImpl;

  factory _CourseOfStudy.fromJson(Map<String, dynamic> json) =
      _$CourseOfStudyImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "fieldOfStudy")
  String get fieldOfStudy;
  @override
  @JsonKey(name: "faculty")
  Faculty get faculty;
  @override
  @JsonKey(name: "schedule")
  Schedule get schedule;
  @override
  @JsonKey(name: "courseType")
  String get courseType;
  @override
  @JsonKey(name: "levelOfStudy")
  String get levelOfStudy;
  @override
  @JsonKey(name: "obtainedTitle")
  String get obtainedTitle;
  @override
  @JsonKey(name: "numberOfSemesters")
  int get numberOfSemesters;
  @override
  @JsonKey(name: "currentSemester")
  int get currentSemester;
  @override
  @JsonKey(name: "startDate")
  DateTime get startDate;
  @override
  @JsonKey(name: "endDate")
  DateTime get endDate;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of CourseOfStudy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseOfStudyImplCopyWith<_$CourseOfStudyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
