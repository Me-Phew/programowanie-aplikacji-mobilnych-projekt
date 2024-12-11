// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_login_with_username_and_password_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentLoginWithUsernameAndPasswordData
    _$StudentLoginWithUsernameAndPasswordDataFromJson(
        Map<String, dynamic> json) {
  return _StudentLoginWithUsernameAndPasswordData.fromJson(json);
}

/// @nodoc
mixin _$StudentLoginWithUsernameAndPasswordData {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  /// Serializes this StudentLoginWithUsernameAndPasswordData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentLoginWithUsernameAndPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentLoginWithUsernameAndPasswordDataCopyWith<
          StudentLoginWithUsernameAndPasswordData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLoginWithUsernameAndPasswordDataCopyWith<$Res> {
  factory $StudentLoginWithUsernameAndPasswordDataCopyWith(
          StudentLoginWithUsernameAndPasswordData value,
          $Res Function(StudentLoginWithUsernameAndPasswordData) then) =
      _$StudentLoginWithUsernameAndPasswordDataCopyWithImpl<$Res,
          StudentLoginWithUsernameAndPasswordData>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$StudentLoginWithUsernameAndPasswordDataCopyWithImpl<$Res,
        $Val extends StudentLoginWithUsernameAndPasswordData>
    implements $StudentLoginWithUsernameAndPasswordDataCopyWith<$Res> {
  _$StudentLoginWithUsernameAndPasswordDataCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentLoginWithUsernameAndPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentLoginWithUsernameAndPasswordDataImplCopyWith<$Res>
    implements $StudentLoginWithUsernameAndPasswordDataCopyWith<$Res> {
  factory _$$StudentLoginWithUsernameAndPasswordDataImplCopyWith(
          _$StudentLoginWithUsernameAndPasswordDataImpl value,
          $Res Function(_$StudentLoginWithUsernameAndPasswordDataImpl) then) =
      __$$StudentLoginWithUsernameAndPasswordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$StudentLoginWithUsernameAndPasswordDataImplCopyWithImpl<$Res>
    extends _$StudentLoginWithUsernameAndPasswordDataCopyWithImpl<$Res,
        _$StudentLoginWithUsernameAndPasswordDataImpl>
    implements _$$StudentLoginWithUsernameAndPasswordDataImplCopyWith<$Res> {
  __$$StudentLoginWithUsernameAndPasswordDataImplCopyWithImpl(
      _$StudentLoginWithUsernameAndPasswordDataImpl _value,
      $Res Function(_$StudentLoginWithUsernameAndPasswordDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentLoginWithUsernameAndPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$StudentLoginWithUsernameAndPasswordDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLoginWithUsernameAndPasswordDataImpl
    implements _StudentLoginWithUsernameAndPasswordData {
  const _$StudentLoginWithUsernameAndPasswordDataImpl(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "password") required this.password});

  factory _$StudentLoginWithUsernameAndPasswordDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentLoginWithUsernameAndPasswordDataImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'StudentLoginWithUsernameAndPasswordData(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLoginWithUsernameAndPasswordDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of StudentLoginWithUsernameAndPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLoginWithUsernameAndPasswordDataImplCopyWith<
          _$StudentLoginWithUsernameAndPasswordDataImpl>
      get copyWith =>
          __$$StudentLoginWithUsernameAndPasswordDataImplCopyWithImpl<
              _$StudentLoginWithUsernameAndPasswordDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLoginWithUsernameAndPasswordDataImplToJson(
      this,
    );
  }
}

abstract class _StudentLoginWithUsernameAndPasswordData
    implements StudentLoginWithUsernameAndPasswordData {
  const factory _StudentLoginWithUsernameAndPasswordData(
          {@JsonKey(name: "email") required final String email,
          @JsonKey(name: "password") required final String password}) =
      _$StudentLoginWithUsernameAndPasswordDataImpl;

  factory _StudentLoginWithUsernameAndPasswordData.fromJson(
          Map<String, dynamic> json) =
      _$StudentLoginWithUsernameAndPasswordDataImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;

  /// Create a copy of StudentLoginWithUsernameAndPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentLoginWithUsernameAndPasswordDataImplCopyWith<
          _$StudentLoginWithUsernameAndPasswordDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
