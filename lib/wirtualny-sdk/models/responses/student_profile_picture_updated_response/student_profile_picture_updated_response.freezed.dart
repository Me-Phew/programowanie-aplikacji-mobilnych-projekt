// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile_picture_updated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentProfilePictureUpdatedResponse
    _$StudentProfilePictureUpdatedResponseFromJson(Map<String, dynamic> json) {
  return _StudentProfilePictureUpdatedResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentProfilePictureUpdatedResponse {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "doc")
  ProfilePicture get doc => throw _privateConstructorUsedError;

  /// Serializes this StudentProfilePictureUpdatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentProfilePictureUpdatedResponseCopyWith<
          StudentProfilePictureUpdatedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentProfilePictureUpdatedResponseCopyWith<$Res> {
  factory $StudentProfilePictureUpdatedResponseCopyWith(
          StudentProfilePictureUpdatedResponse value,
          $Res Function(StudentProfilePictureUpdatedResponse) then) =
      _$StudentProfilePictureUpdatedResponseCopyWithImpl<$Res,
          StudentProfilePictureUpdatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "doc") ProfilePicture doc});

  $ProfilePictureCopyWith<$Res> get doc;
}

/// @nodoc
class _$StudentProfilePictureUpdatedResponseCopyWithImpl<$Res,
        $Val extends StudentProfilePictureUpdatedResponse>
    implements $StudentProfilePictureUpdatedResponseCopyWith<$Res> {
  _$StudentProfilePictureUpdatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? doc = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      doc: null == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as ProfilePicture,
    ) as $Val);
  }

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfilePictureCopyWith<$Res> get doc {
    return $ProfilePictureCopyWith<$Res>(_value.doc, (value) {
      return _then(_value.copyWith(doc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentProfilePictureUpdatedResponseImplCopyWith<$Res>
    implements $StudentProfilePictureUpdatedResponseCopyWith<$Res> {
  factory _$$StudentProfilePictureUpdatedResponseImplCopyWith(
          _$StudentProfilePictureUpdatedResponseImpl value,
          $Res Function(_$StudentProfilePictureUpdatedResponseImpl) then) =
      __$$StudentProfilePictureUpdatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "doc") ProfilePicture doc});

  @override
  $ProfilePictureCopyWith<$Res> get doc;
}

/// @nodoc
class __$$StudentProfilePictureUpdatedResponseImplCopyWithImpl<$Res>
    extends _$StudentProfilePictureUpdatedResponseCopyWithImpl<$Res,
        _$StudentProfilePictureUpdatedResponseImpl>
    implements _$$StudentProfilePictureUpdatedResponseImplCopyWith<$Res> {
  __$$StudentProfilePictureUpdatedResponseImplCopyWithImpl(
      _$StudentProfilePictureUpdatedResponseImpl _value,
      $Res Function(_$StudentProfilePictureUpdatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? doc = null,
  }) {
    return _then(_$StudentProfilePictureUpdatedResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      doc: null == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as ProfilePicture,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentProfilePictureUpdatedResponseImpl
    implements _StudentProfilePictureUpdatedResponse {
  const _$StudentProfilePictureUpdatedResponseImpl(
      {@JsonKey(name: "message") required this.message,
      @JsonKey(name: "doc") required this.doc});

  factory _$StudentProfilePictureUpdatedResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentProfilePictureUpdatedResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "doc")
  final ProfilePicture doc;

  @override
  String toString() {
    return 'StudentProfilePictureUpdatedResponse(message: $message, doc: $doc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentProfilePictureUpdatedResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.doc, doc) || other.doc == doc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, doc);

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentProfilePictureUpdatedResponseImplCopyWith<
          _$StudentProfilePictureUpdatedResponseImpl>
      get copyWith => __$$StudentProfilePictureUpdatedResponseImplCopyWithImpl<
          _$StudentProfilePictureUpdatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentProfilePictureUpdatedResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentProfilePictureUpdatedResponse
    implements StudentProfilePictureUpdatedResponse {
  const factory _StudentProfilePictureUpdatedResponse(
          {@JsonKey(name: "message") required final String message,
          @JsonKey(name: "doc") required final ProfilePicture doc}) =
      _$StudentProfilePictureUpdatedResponseImpl;

  factory _StudentProfilePictureUpdatedResponse.fromJson(
          Map<String, dynamic> json) =
      _$StudentProfilePictureUpdatedResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "doc")
  ProfilePicture get doc;

  /// Create a copy of StudentProfilePictureUpdatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentProfilePictureUpdatedResponseImplCopyWith<
          _$StudentProfilePictureUpdatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
