// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentLoginResponse _$StudentLoginResponseFromJson(Map<String, dynamic> json) {
  return _StudentLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentLoginResponse {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "exp")
  int get exp => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  Student get user => throw _privateConstructorUsedError;

  /// Serializes this StudentLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentLoginResponseCopyWith<StudentLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLoginResponseCopyWith<$Res> {
  factory $StudentLoginResponseCopyWith(StudentLoginResponse value,
          $Res Function(StudentLoginResponse) then) =
      _$StudentLoginResponseCopyWithImpl<$Res, StudentLoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "exp") int exp,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "user") Student user});

  $StudentCopyWith<$Res> get user;
}

/// @nodoc
class _$StudentLoginResponseCopyWithImpl<$Res,
        $Val extends StudentLoginResponse>
    implements $StudentLoginResponseCopyWith<$Res> {
  _$StudentLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exp = null,
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Student,
    ) as $Val);
  }

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get user {
    return $StudentCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentLoginResponseImplCopyWith<$Res>
    implements $StudentLoginResponseCopyWith<$Res> {
  factory _$$StudentLoginResponseImplCopyWith(_$StudentLoginResponseImpl value,
          $Res Function(_$StudentLoginResponseImpl) then) =
      __$$StudentLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "exp") int exp,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "user") Student user});

  @override
  $StudentCopyWith<$Res> get user;
}

/// @nodoc
class __$$StudentLoginResponseImplCopyWithImpl<$Res>
    extends _$StudentLoginResponseCopyWithImpl<$Res, _$StudentLoginResponseImpl>
    implements _$$StudentLoginResponseImplCopyWith<$Res> {
  __$$StudentLoginResponseImplCopyWithImpl(_$StudentLoginResponseImpl _value,
      $Res Function(_$StudentLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? exp = null,
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$StudentLoginResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLoginResponseImpl implements _StudentLoginResponse {
  const _$StudentLoginResponseImpl(
      {@JsonKey(name: "message") required this.message,
      @JsonKey(name: "exp") required this.exp,
      @JsonKey(name: "token") required this.token,
      @JsonKey(name: "user") required this.user});

  factory _$StudentLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentLoginResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "exp")
  final int exp;
  @override
  @JsonKey(name: "token")
  final String token;
  @override
  @JsonKey(name: "user")
  final Student user;

  @override
  String toString() {
    return 'StudentLoginResponse(message: $message, exp: $exp, token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLoginResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, exp, token, user);

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLoginResponseImplCopyWith<_$StudentLoginResponseImpl>
      get copyWith =>
          __$$StudentLoginResponseImplCopyWithImpl<_$StudentLoginResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentLoginResponse implements StudentLoginResponse {
  const factory _StudentLoginResponse(
          {@JsonKey(name: "message") required final String message,
          @JsonKey(name: "exp") required final int exp,
          @JsonKey(name: "token") required final String token,
          @JsonKey(name: "user") required final Student user}) =
      _$StudentLoginResponseImpl;

  factory _StudentLoginResponse.fromJson(Map<String, dynamic> json) =
      _$StudentLoginResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "exp")
  int get exp;
  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(name: "user")
  Student get user;

  /// Create a copy of StudentLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentLoginResponseImplCopyWith<_$StudentLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
