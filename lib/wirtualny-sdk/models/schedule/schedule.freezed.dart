// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeekPartTimeSchedule _$WeekPartTimeScheduleFromJson(Map<String, dynamic> json) {
  return _WeekPartTimeSchedule.fromJson(json);
}

/// @nodoc
mixin _$WeekPartTimeSchedule {
  @JsonKey(name: "saturday")
  List<Lecture> get saturday => throw _privateConstructorUsedError;
  @JsonKey(name: "sunday")
  List<Lecture> get sunday => throw _privateConstructorUsedError;

  /// Serializes this WeekPartTimeSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekPartTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekPartTimeScheduleCopyWith<WeekPartTimeSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPartTimeScheduleCopyWith<$Res> {
  factory $WeekPartTimeScheduleCopyWith(WeekPartTimeSchedule value,
          $Res Function(WeekPartTimeSchedule) then) =
      _$WeekPartTimeScheduleCopyWithImpl<$Res, WeekPartTimeSchedule>;
  @useResult
  $Res call(
      {@JsonKey(name: "saturday") List<Lecture> saturday,
      @JsonKey(name: "sunday") List<Lecture> sunday});
}

/// @nodoc
class _$WeekPartTimeScheduleCopyWithImpl<$Res,
        $Val extends WeekPartTimeSchedule>
    implements $WeekPartTimeScheduleCopyWith<$Res> {
  _$WeekPartTimeScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekPartTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_value.copyWith(
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPartTimeScheduleImplCopyWith<$Res>
    implements $WeekPartTimeScheduleCopyWith<$Res> {
  factory _$$WeekPartTimeScheduleImplCopyWith(_$WeekPartTimeScheduleImpl value,
          $Res Function(_$WeekPartTimeScheduleImpl) then) =
      __$$WeekPartTimeScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "saturday") List<Lecture> saturday,
      @JsonKey(name: "sunday") List<Lecture> sunday});
}

/// @nodoc
class __$$WeekPartTimeScheduleImplCopyWithImpl<$Res>
    extends _$WeekPartTimeScheduleCopyWithImpl<$Res, _$WeekPartTimeScheduleImpl>
    implements _$$WeekPartTimeScheduleImplCopyWith<$Res> {
  __$$WeekPartTimeScheduleImplCopyWithImpl(_$WeekPartTimeScheduleImpl _value,
      $Res Function(_$WeekPartTimeScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekPartTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_$WeekPartTimeScheduleImpl(
      saturday: null == saturday
          ? _value._saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      sunday: null == sunday
          ? _value._sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPartTimeScheduleImpl implements _WeekPartTimeSchedule {
  const _$WeekPartTimeScheduleImpl(
      {@JsonKey(name: "saturday") required final List<Lecture> saturday,
      @JsonKey(name: "sunday") required final List<Lecture> sunday})
      : _saturday = saturday,
        _sunday = sunday;

  factory _$WeekPartTimeScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPartTimeScheduleImplFromJson(json);

  final List<Lecture> _saturday;
  @override
  @JsonKey(name: "saturday")
  List<Lecture> get saturday {
    if (_saturday is EqualUnmodifiableListView) return _saturday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saturday);
  }

  final List<Lecture> _sunday;
  @override
  @JsonKey(name: "sunday")
  List<Lecture> get sunday {
    if (_sunday is EqualUnmodifiableListView) return _sunday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunday);
  }

  @override
  String toString() {
    return 'WeekPartTimeSchedule(saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPartTimeScheduleImpl &&
            const DeepCollectionEquality().equals(other._saturday, _saturday) &&
            const DeepCollectionEquality().equals(other._sunday, _sunday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_saturday),
      const DeepCollectionEquality().hash(_sunday));

  /// Create a copy of WeekPartTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPartTimeScheduleImplCopyWith<_$WeekPartTimeScheduleImpl>
      get copyWith =>
          __$$WeekPartTimeScheduleImplCopyWithImpl<_$WeekPartTimeScheduleImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPartTimeScheduleImplToJson(
      this,
    );
  }
}

abstract class _WeekPartTimeSchedule implements WeekPartTimeSchedule {
  const factory _WeekPartTimeSchedule(
          {@JsonKey(name: "saturday") required final List<Lecture> saturday,
          @JsonKey(name: "sunday") required final List<Lecture> sunday}) =
      _$WeekPartTimeScheduleImpl;

  factory _WeekPartTimeSchedule.fromJson(Map<String, dynamic> json) =
      _$WeekPartTimeScheduleImpl.fromJson;

  @override
  @JsonKey(name: "saturday")
  List<Lecture> get saturday;
  @override
  @JsonKey(name: "sunday")
  List<Lecture> get sunday;

  /// Create a copy of WeekPartTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekPartTimeScheduleImplCopyWith<_$WeekPartTimeScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeekFullTimeSchedule _$WeekFullTimeScheduleFromJson(Map<String, dynamic> json) {
  return _WeekFullTimeSchedule.fromJson(json);
}

/// @nodoc
mixin _$WeekFullTimeSchedule {
  @JsonKey(name: "monday")
  List<Lecture> get monday => throw _privateConstructorUsedError;
  @JsonKey(name: "tuesday")
  List<Lecture> get tuesday => throw _privateConstructorUsedError;
  @JsonKey(name: "wednesday")
  List<Lecture> get wednesday => throw _privateConstructorUsedError;
  @JsonKey(name: "thursday")
  List<Lecture> get thursday => throw _privateConstructorUsedError;
  @JsonKey(name: "friday")
  List<Lecture> get friday => throw _privateConstructorUsedError;

  /// Serializes this WeekFullTimeSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekFullTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekFullTimeScheduleCopyWith<WeekFullTimeSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekFullTimeScheduleCopyWith<$Res> {
  factory $WeekFullTimeScheduleCopyWith(WeekFullTimeSchedule value,
          $Res Function(WeekFullTimeSchedule) then) =
      _$WeekFullTimeScheduleCopyWithImpl<$Res, WeekFullTimeSchedule>;
  @useResult
  $Res call(
      {@JsonKey(name: "monday") List<Lecture> monday,
      @JsonKey(name: "tuesday") List<Lecture> tuesday,
      @JsonKey(name: "wednesday") List<Lecture> wednesday,
      @JsonKey(name: "thursday") List<Lecture> thursday,
      @JsonKey(name: "friday") List<Lecture> friday});
}

/// @nodoc
class _$WeekFullTimeScheduleCopyWithImpl<$Res,
        $Val extends WeekFullTimeSchedule>
    implements $WeekFullTimeScheduleCopyWith<$Res> {
  _$WeekFullTimeScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekFullTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekFullTimeScheduleImplCopyWith<$Res>
    implements $WeekFullTimeScheduleCopyWith<$Res> {
  factory _$$WeekFullTimeScheduleImplCopyWith(_$WeekFullTimeScheduleImpl value,
          $Res Function(_$WeekFullTimeScheduleImpl) then) =
      __$$WeekFullTimeScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "monday") List<Lecture> monday,
      @JsonKey(name: "tuesday") List<Lecture> tuesday,
      @JsonKey(name: "wednesday") List<Lecture> wednesday,
      @JsonKey(name: "thursday") List<Lecture> thursday,
      @JsonKey(name: "friday") List<Lecture> friday});
}

/// @nodoc
class __$$WeekFullTimeScheduleImplCopyWithImpl<$Res>
    extends _$WeekFullTimeScheduleCopyWithImpl<$Res, _$WeekFullTimeScheduleImpl>
    implements _$$WeekFullTimeScheduleImplCopyWith<$Res> {
  __$$WeekFullTimeScheduleImplCopyWithImpl(_$WeekFullTimeScheduleImpl _value,
      $Res Function(_$WeekFullTimeScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekFullTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
  }) {
    return _then(_$WeekFullTimeScheduleImpl(
      monday: null == monday
          ? _value._monday
          : monday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      tuesday: null == tuesday
          ? _value._tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      wednesday: null == wednesday
          ? _value._wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      thursday: null == thursday
          ? _value._thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
      friday: null == friday
          ? _value._friday
          : friday // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekFullTimeScheduleImpl implements _WeekFullTimeSchedule {
  const _$WeekFullTimeScheduleImpl(
      {@JsonKey(name: "monday") required final List<Lecture> monday,
      @JsonKey(name: "tuesday") required final List<Lecture> tuesday,
      @JsonKey(name: "wednesday") required final List<Lecture> wednesday,
      @JsonKey(name: "thursday") required final List<Lecture> thursday,
      @JsonKey(name: "friday") required final List<Lecture> friday})
      : _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday;

  factory _$WeekFullTimeScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekFullTimeScheduleImplFromJson(json);

  final List<Lecture> _monday;
  @override
  @JsonKey(name: "monday")
  List<Lecture> get monday {
    if (_monday is EqualUnmodifiableListView) return _monday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monday);
  }

  final List<Lecture> _tuesday;
  @override
  @JsonKey(name: "tuesday")
  List<Lecture> get tuesday {
    if (_tuesday is EqualUnmodifiableListView) return _tuesday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tuesday);
  }

  final List<Lecture> _wednesday;
  @override
  @JsonKey(name: "wednesday")
  List<Lecture> get wednesday {
    if (_wednesday is EqualUnmodifiableListView) return _wednesday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wednesday);
  }

  final List<Lecture> _thursday;
  @override
  @JsonKey(name: "thursday")
  List<Lecture> get thursday {
    if (_thursday is EqualUnmodifiableListView) return _thursday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thursday);
  }

  final List<Lecture> _friday;
  @override
  @JsonKey(name: "friday")
  List<Lecture> get friday {
    if (_friday is EqualUnmodifiableListView) return _friday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friday);
  }

  @override
  String toString() {
    return 'WeekFullTimeSchedule(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekFullTimeScheduleImpl &&
            const DeepCollectionEquality().equals(other._monday, _monday) &&
            const DeepCollectionEquality().equals(other._tuesday, _tuesday) &&
            const DeepCollectionEquality()
                .equals(other._wednesday, _wednesday) &&
            const DeepCollectionEquality().equals(other._thursday, _thursday) &&
            const DeepCollectionEquality().equals(other._friday, _friday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_monday),
      const DeepCollectionEquality().hash(_tuesday),
      const DeepCollectionEquality().hash(_wednesday),
      const DeepCollectionEquality().hash(_thursday),
      const DeepCollectionEquality().hash(_friday));

  /// Create a copy of WeekFullTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekFullTimeScheduleImplCopyWith<_$WeekFullTimeScheduleImpl>
      get copyWith =>
          __$$WeekFullTimeScheduleImplCopyWithImpl<_$WeekFullTimeScheduleImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekFullTimeScheduleImplToJson(
      this,
    );
  }
}

abstract class _WeekFullTimeSchedule implements WeekFullTimeSchedule {
  const factory _WeekFullTimeSchedule(
          {@JsonKey(name: "monday") required final List<Lecture> monday,
          @JsonKey(name: "tuesday") required final List<Lecture> tuesday,
          @JsonKey(name: "wednesday") required final List<Lecture> wednesday,
          @JsonKey(name: "thursday") required final List<Lecture> thursday,
          @JsonKey(name: "friday") required final List<Lecture> friday}) =
      _$WeekFullTimeScheduleImpl;

  factory _WeekFullTimeSchedule.fromJson(Map<String, dynamic> json) =
      _$WeekFullTimeScheduleImpl.fromJson;

  @override
  @JsonKey(name: "monday")
  List<Lecture> get monday;
  @override
  @JsonKey(name: "tuesday")
  List<Lecture> get tuesday;
  @override
  @JsonKey(name: "wednesday")
  List<Lecture> get wednesday;
  @override
  @JsonKey(name: "thursday")
  List<Lecture> get thursday;
  @override
  @JsonKey(name: "friday")
  List<Lecture> get friday;

  /// Create a copy of WeekFullTimeSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekFullTimeScheduleImplCopyWith<_$WeekFullTimeScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "weekAfullTimeSchedule")
  WeekFullTimeSchedule get weekAfullTimeSchedule =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "weekAPartTimeSchedule")
  WeekPartTimeSchedule get weekAPartTimeSchedule =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "weekBfullTimeSchedule")
  WeekFullTimeSchedule get weekBfullTimeSchedule =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "weekBPartTimeSchedule")
  WeekPartTimeSchedule get weekBPartTimeSchedule =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "weekAfullTimeSchedule")
      WeekFullTimeSchedule weekAfullTimeSchedule,
      @JsonKey(name: "weekAPartTimeSchedule")
      WeekPartTimeSchedule weekAPartTimeSchedule,
      @JsonKey(name: "weekBfullTimeSchedule")
      WeekFullTimeSchedule weekBfullTimeSchedule,
      @JsonKey(name: "weekBPartTimeSchedule")
      WeekPartTimeSchedule weekBPartTimeSchedule,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  $WeekFullTimeScheduleCopyWith<$Res> get weekAfullTimeSchedule;
  $WeekPartTimeScheduleCopyWith<$Res> get weekAPartTimeSchedule;
  $WeekFullTimeScheduleCopyWith<$Res> get weekBfullTimeSchedule;
  $WeekPartTimeScheduleCopyWith<$Res> get weekBPartTimeSchedule;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekAfullTimeSchedule = null,
    Object? weekAPartTimeSchedule = null,
    Object? weekBfullTimeSchedule = null,
    Object? weekBPartTimeSchedule = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weekAfullTimeSchedule: null == weekAfullTimeSchedule
          ? _value.weekAfullTimeSchedule
          : weekAfullTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekFullTimeSchedule,
      weekAPartTimeSchedule: null == weekAPartTimeSchedule
          ? _value.weekAPartTimeSchedule
          : weekAPartTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekPartTimeSchedule,
      weekBfullTimeSchedule: null == weekBfullTimeSchedule
          ? _value.weekBfullTimeSchedule
          : weekBfullTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekFullTimeSchedule,
      weekBPartTimeSchedule: null == weekBPartTimeSchedule
          ? _value.weekBPartTimeSchedule
          : weekBPartTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekPartTimeSchedule,
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

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekFullTimeScheduleCopyWith<$Res> get weekAfullTimeSchedule {
    return $WeekFullTimeScheduleCopyWith<$Res>(_value.weekAfullTimeSchedule,
        (value) {
      return _then(_value.copyWith(weekAfullTimeSchedule: value) as $Val);
    });
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekPartTimeScheduleCopyWith<$Res> get weekAPartTimeSchedule {
    return $WeekPartTimeScheduleCopyWith<$Res>(_value.weekAPartTimeSchedule,
        (value) {
      return _then(_value.copyWith(weekAPartTimeSchedule: value) as $Val);
    });
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekFullTimeScheduleCopyWith<$Res> get weekBfullTimeSchedule {
    return $WeekFullTimeScheduleCopyWith<$Res>(_value.weekBfullTimeSchedule,
        (value) {
      return _then(_value.copyWith(weekBfullTimeSchedule: value) as $Val);
    });
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekPartTimeScheduleCopyWith<$Res> get weekBPartTimeSchedule {
    return $WeekPartTimeScheduleCopyWith<$Res>(_value.weekBPartTimeSchedule,
        (value) {
      return _then(_value.copyWith(weekBPartTimeSchedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "weekAfullTimeSchedule")
      WeekFullTimeSchedule weekAfullTimeSchedule,
      @JsonKey(name: "weekAPartTimeSchedule")
      WeekPartTimeSchedule weekAPartTimeSchedule,
      @JsonKey(name: "weekBfullTimeSchedule")
      WeekFullTimeSchedule weekBfullTimeSchedule,
      @JsonKey(name: "weekBPartTimeSchedule")
      WeekPartTimeSchedule weekBPartTimeSchedule,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  @override
  $WeekFullTimeScheduleCopyWith<$Res> get weekAfullTimeSchedule;
  @override
  $WeekPartTimeScheduleCopyWith<$Res> get weekAPartTimeSchedule;
  @override
  $WeekFullTimeScheduleCopyWith<$Res> get weekBfullTimeSchedule;
  @override
  $WeekPartTimeScheduleCopyWith<$Res> get weekBPartTimeSchedule;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weekAfullTimeSchedule = null,
    Object? weekAPartTimeSchedule = null,
    Object? weekBfullTimeSchedule = null,
    Object? weekBPartTimeSchedule = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$ScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weekAfullTimeSchedule: null == weekAfullTimeSchedule
          ? _value.weekAfullTimeSchedule
          : weekAfullTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekFullTimeSchedule,
      weekAPartTimeSchedule: null == weekAPartTimeSchedule
          ? _value.weekAPartTimeSchedule
          : weekAPartTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekPartTimeSchedule,
      weekBfullTimeSchedule: null == weekBfullTimeSchedule
          ? _value.weekBfullTimeSchedule
          : weekBfullTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekFullTimeSchedule,
      weekBPartTimeSchedule: null == weekBPartTimeSchedule
          ? _value.weekBPartTimeSchedule
          : weekBPartTimeSchedule // ignore: cast_nullable_to_non_nullable
              as WeekPartTimeSchedule,
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
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "weekAfullTimeSchedule")
      required this.weekAfullTimeSchedule,
      @JsonKey(name: "weekAPartTimeSchedule")
      required this.weekAPartTimeSchedule,
      @JsonKey(name: "weekBfullTimeSchedule")
      required this.weekBfullTimeSchedule,
      @JsonKey(name: "weekBPartTimeSchedule")
      required this.weekBPartTimeSchedule,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "weekAfullTimeSchedule")
  final WeekFullTimeSchedule weekAfullTimeSchedule;
  @override
  @JsonKey(name: "weekAPartTimeSchedule")
  final WeekPartTimeSchedule weekAPartTimeSchedule;
  @override
  @JsonKey(name: "weekBfullTimeSchedule")
  final WeekFullTimeSchedule weekBfullTimeSchedule;
  @override
  @JsonKey(name: "weekBPartTimeSchedule")
  final WeekPartTimeSchedule weekBPartTimeSchedule;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Schedule(id: $id, weekAfullTimeSchedule: $weekAfullTimeSchedule, weekAPartTimeSchedule: $weekAPartTimeSchedule, weekBfullTimeSchedule: $weekBfullTimeSchedule, weekBPartTimeSchedule: $weekBPartTimeSchedule, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weekAfullTimeSchedule, weekAfullTimeSchedule) ||
                other.weekAfullTimeSchedule == weekAfullTimeSchedule) &&
            (identical(other.weekAPartTimeSchedule, weekAPartTimeSchedule) ||
                other.weekAPartTimeSchedule == weekAPartTimeSchedule) &&
            (identical(other.weekBfullTimeSchedule, weekBfullTimeSchedule) ||
                other.weekBfullTimeSchedule == weekBfullTimeSchedule) &&
            (identical(other.weekBPartTimeSchedule, weekBPartTimeSchedule) ||
                other.weekBPartTimeSchedule == weekBPartTimeSchedule) &&
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
      weekAfullTimeSchedule,
      weekAPartTimeSchedule,
      weekBfullTimeSchedule,
      weekBPartTimeSchedule,
      updatedAt,
      createdAt);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "weekAfullTimeSchedule")
          required final WeekFullTimeSchedule weekAfullTimeSchedule,
          @JsonKey(name: "weekAPartTimeSchedule")
          required final WeekPartTimeSchedule weekAPartTimeSchedule,
          @JsonKey(name: "weekBfullTimeSchedule")
          required final WeekFullTimeSchedule weekBfullTimeSchedule,
          @JsonKey(name: "weekBPartTimeSchedule")
          required final WeekPartTimeSchedule weekBPartTimeSchedule,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt}) =
      _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "weekAfullTimeSchedule")
  WeekFullTimeSchedule get weekAfullTimeSchedule;
  @override
  @JsonKey(name: "weekAPartTimeSchedule")
  WeekPartTimeSchedule get weekAPartTimeSchedule;
  @override
  @JsonKey(name: "weekBfullTimeSchedule")
  WeekFullTimeSchedule get weekBfullTimeSchedule;
  @override
  @JsonKey(name: "weekBPartTimeSchedule")
  WeekPartTimeSchedule get weekBPartTimeSchedule;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
