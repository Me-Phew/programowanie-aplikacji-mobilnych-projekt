// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "isBroadcast")
  bool get isBroadcast =>
      throw _privateConstructorUsedError; // @JsonKey(name: "recipients") required List<Recipient> recipients,
  @JsonKey(name: "subject")
  String get subject =>
      throw _privateConstructorUsedError; // @JsonKey(name: "content") required Content content,
  @JsonKey(name: "content_html")
  String get contentHtml => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  String get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Announcement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "isBroadcast") bool isBroadcast,
      @JsonKey(name: "subject") String subject,
      @JsonKey(name: "content_html") String contentHtml,
      @JsonKey(name: "priority") String priority,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBroadcast = null,
    Object? subject = null,
    Object? contentHtml = null,
    Object? priority = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBroadcast: null == isBroadcast
          ? _value.isBroadcast
          : isBroadcast // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      contentHtml: null == contentHtml
          ? _value.contentHtml
          : contentHtml // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AnnouncementImplCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$AnnouncementImplCopyWith(
          _$AnnouncementImpl value, $Res Function(_$AnnouncementImpl) then) =
      __$$AnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "isBroadcast") bool isBroadcast,
      @JsonKey(name: "subject") String subject,
      @JsonKey(name: "content_html") String contentHtml,
      @JsonKey(name: "priority") String priority,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class __$$AnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$AnnouncementImpl>
    implements _$$AnnouncementImplCopyWith<$Res> {
  __$$AnnouncementImplCopyWithImpl(
      _$AnnouncementImpl _value, $Res Function(_$AnnouncementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBroadcast = null,
    Object? subject = null,
    Object? contentHtml = null,
    Object? priority = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$AnnouncementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBroadcast: null == isBroadcast
          ? _value.isBroadcast
          : isBroadcast // ignore: cast_nullable_to_non_nullable
              as bool,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      contentHtml: null == contentHtml
          ? _value.contentHtml
          : contentHtml // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
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
class _$AnnouncementImpl implements _Announcement {
  const _$AnnouncementImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "isBroadcast") required this.isBroadcast,
      @JsonKey(name: "subject") required this.subject,
      @JsonKey(name: "content_html") required this.contentHtml,
      @JsonKey(name: "priority") required this.priority,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$AnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "isBroadcast")
  final bool isBroadcast;
// @JsonKey(name: "recipients") required List<Recipient> recipients,
  @override
  @JsonKey(name: "subject")
  final String subject;
// @JsonKey(name: "content") required Content content,
  @override
  @JsonKey(name: "content_html")
  final String contentHtml;
  @override
  @JsonKey(name: "priority")
  final String priority;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Announcement(id: $id, isBroadcast: $isBroadcast, subject: $subject, contentHtml: $contentHtml, priority: $priority, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBroadcast, isBroadcast) ||
                other.isBroadcast == isBroadcast) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.contentHtml, contentHtml) ||
                other.contentHtml == contentHtml) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, isBroadcast, subject,
      contentHtml, priority, updatedAt, createdAt);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      __$$AnnouncementImplCopyWithImpl<_$AnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementImplToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "isBroadcast") required final bool isBroadcast,
          @JsonKey(name: "subject") required final String subject,
          @JsonKey(name: "content_html") required final String contentHtml,
          @JsonKey(name: "priority") required final String priority,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "createdAt") required final DateTime createdAt}) =
      _$AnnouncementImpl;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$AnnouncementImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "isBroadcast")
  bool
      get isBroadcast; // @JsonKey(name: "recipients") required List<Recipient> recipients,
  @override
  @JsonKey(name: "subject")
  String get subject; // @JsonKey(name: "content") required Content content,
  @override
  @JsonKey(name: "content_html")
  String get contentHtml;
  @override
  @JsonKey(name: "priority")
  String get priority;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
