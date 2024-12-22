// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfilePicture _$ProfilePictureFromJson(Map<String, dynamic> json) {
  return _ProfilePicture.fromJson(json);
}

/// @nodoc
mixin _$ProfilePicture {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnailURL")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "filename")
  String get filename => throw _privateConstructorUsedError;
  @JsonKey(name: "mimeType")
  String get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: "filesize")
  int get filesize => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "focalX")
  int get focalX => throw _privateConstructorUsedError;
  @JsonKey(name: "focalY")
  int get focalY => throw _privateConstructorUsedError;

  /// Serializes this ProfilePicture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res, ProfilePicture>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "thumbnailURL") String? thumbnailUrl,
      @JsonKey(name: "filename") String filename,
      @JsonKey(name: "mimeType") String mimeType,
      @JsonKey(name: "filesize") int filesize,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "focalX") int focalX,
      @JsonKey(name: "focalY") int focalY});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res, $Val extends ProfilePicture>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? filename = null,
    Object? mimeType = null,
    Object? filesize = null,
    Object? width = null,
    Object? height = null,
    Object? focalX = null,
    Object? focalY = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      filesize: null == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      focalX: null == focalX
          ? _value.focalX
          : focalX // ignore: cast_nullable_to_non_nullable
              as int,
      focalY: null == focalY
          ? _value.focalY
          : focalY // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePictureImplCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$$ProfilePictureImplCopyWith(_$ProfilePictureImpl value,
          $Res Function(_$ProfilePictureImpl) then) =
      __$$ProfilePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "thumbnailURL") String? thumbnailUrl,
      @JsonKey(name: "filename") String filename,
      @JsonKey(name: "mimeType") String mimeType,
      @JsonKey(name: "filesize") int filesize,
      @JsonKey(name: "width") int width,
      @JsonKey(name: "height") int height,
      @JsonKey(name: "focalX") int focalX,
      @JsonKey(name: "focalY") int focalY});
}

/// @nodoc
class __$$ProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res, _$ProfilePictureImpl>
    implements _$$ProfilePictureImplCopyWith<$Res> {
  __$$ProfilePictureImplCopyWithImpl(
      _$ProfilePictureImpl _value, $Res Function(_$ProfilePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? filename = null,
    Object? mimeType = null,
    Object? filesize = null,
    Object? width = null,
    Object? height = null,
    Object? focalX = null,
    Object? focalY = null,
  }) {
    return _then(_$ProfilePictureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      filesize: null == filesize
          ? _value.filesize
          : filesize // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      focalX: null == focalX
          ? _value.focalX
          : focalX // ignore: cast_nullable_to_non_nullable
              as int,
      focalY: null == focalY
          ? _value.focalY
          : focalY // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePictureImpl implements _ProfilePicture {
  const _$ProfilePictureImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "thumbnailURL") this.thumbnailUrl,
      @JsonKey(name: "filename") required this.filename,
      @JsonKey(name: "mimeType") required this.mimeType,
      @JsonKey(name: "filesize") required this.filesize,
      @JsonKey(name: "width") required this.width,
      @JsonKey(name: "height") required this.height,
      @JsonKey(name: "focalX") required this.focalX,
      @JsonKey(name: "focalY") required this.focalY});

  factory _$ProfilePictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePictureImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "thumbnailURL")
  final String? thumbnailUrl;
  @override
  @JsonKey(name: "filename")
  final String filename;
  @override
  @JsonKey(name: "mimeType")
  final String mimeType;
  @override
  @JsonKey(name: "filesize")
  final int filesize;
  @override
  @JsonKey(name: "width")
  final int width;
  @override
  @JsonKey(name: "height")
  final int height;
  @override
  @JsonKey(name: "focalX")
  final int focalX;
  @override
  @JsonKey(name: "focalY")
  final int focalY;

  @override
  String toString() {
    return 'ProfilePicture(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, url: $url, thumbnailUrl: $thumbnailUrl, filename: $filename, mimeType: $mimeType, filesize: $filesize, width: $width, height: $height, focalX: $focalX, focalY: $focalY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.filesize, filesize) ||
                other.filesize == filesize) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.focalX, focalX) || other.focalX == focalX) &&
            (identical(other.focalY, focalY) || other.focalY == focalY));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      createdAt,
      url,
      thumbnailUrl,
      filename,
      mimeType,
      filesize,
      width,
      height,
      focalX,
      focalY);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      __$$ProfilePictureImplCopyWithImpl<_$ProfilePictureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePictureImplToJson(
      this,
    );
  }
}

abstract class _ProfilePicture implements ProfilePicture {
  const factory _ProfilePicture(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "url") required final String url,
          @JsonKey(name: "thumbnailURL") final String? thumbnailUrl,
          @JsonKey(name: "filename") required final String filename,
          @JsonKey(name: "mimeType") required final String mimeType,
          @JsonKey(name: "filesize") required final int filesize,
          @JsonKey(name: "width") required final int width,
          @JsonKey(name: "height") required final int height,
          @JsonKey(name: "focalX") required final int focalX,
          @JsonKey(name: "focalY") required final int focalY}) =
      _$ProfilePictureImpl;

  factory _ProfilePicture.fromJson(Map<String, dynamic> json) =
      _$ProfilePictureImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "thumbnailURL")
  String? get thumbnailUrl;
  @override
  @JsonKey(name: "filename")
  String get filename;
  @override
  @JsonKey(name: "mimeType")
  String get mimeType;
  @override
  @JsonKey(name: "filesize")
  int get filesize;
  @override
  @JsonKey(name: "width")
  int get width;
  @override
  @JsonKey(name: "height")
  int get height;
  @override
  @JsonKey(name: "focalX")
  int get focalX;
  @override
  @JsonKey(name: "focalY")
  int get focalY;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
