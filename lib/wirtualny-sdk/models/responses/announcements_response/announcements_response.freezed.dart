// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcements_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementsResponse _$AnnouncementsResponseFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementsResponse.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementsResponse {
  @JsonKey(name: "docs")
  List<Announcement> get docs => throw _privateConstructorUsedError;
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "nextPage")
  int get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "pagingCounter")
  int get pagingCounter => throw _privateConstructorUsedError;
  @JsonKey(name: "prevPage")
  dynamic get prevPage => throw _privateConstructorUsedError;
  @JsonKey(name: "totalDocs")
  int get totalDocs => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPages")
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementsResponseCopyWith<AnnouncementsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementsResponseCopyWith<$Res> {
  factory $AnnouncementsResponseCopyWith(AnnouncementsResponse value,
          $Res Function(AnnouncementsResponse) then) =
      _$AnnouncementsResponseCopyWithImpl<$Res, AnnouncementsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<Announcement> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") dynamic prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class _$AnnouncementsResponseCopyWithImpl<$Res,
        $Val extends AnnouncementsResponse>
    implements $AnnouncementsResponseCopyWith<$Res> {
  _$AnnouncementsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = null,
    Object? nextPage = null,
    Object? page = null,
    Object? pagingCounter = null,
    Object? prevPage = freezed,
    Object? totalDocs = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as int,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementsResponseImplCopyWith<$Res>
    implements $AnnouncementsResponseCopyWith<$Res> {
  factory _$$AnnouncementsResponseImplCopyWith(
          _$AnnouncementsResponseImpl value,
          $Res Function(_$AnnouncementsResponseImpl) then) =
      __$$AnnouncementsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "docs") List<Announcement> docs,
      @JsonKey(name: "hasNextPage") bool hasNextPage,
      @JsonKey(name: "hasPrevPage") bool hasPrevPage,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "nextPage") int nextPage,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pagingCounter") int pagingCounter,
      @JsonKey(name: "prevPage") dynamic prevPage,
      @JsonKey(name: "totalDocs") int totalDocs,
      @JsonKey(name: "totalPages") int totalPages});
}

/// @nodoc
class __$$AnnouncementsResponseImplCopyWithImpl<$Res>
    extends _$AnnouncementsResponseCopyWithImpl<$Res,
        _$AnnouncementsResponseImpl>
    implements _$$AnnouncementsResponseImplCopyWith<$Res> {
  __$$AnnouncementsResponseImplCopyWithImpl(_$AnnouncementsResponseImpl _value,
      $Res Function(_$AnnouncementsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? limit = null,
    Object? nextPage = null,
    Object? page = null,
    Object? pagingCounter = null,
    Object? prevPage = freezed,
    Object? totalDocs = null,
    Object? totalPages = null,
  }) {
    return _then(_$AnnouncementsResponseImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as int,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementsResponseImpl implements _AnnouncementsResponse {
  const _$AnnouncementsResponseImpl(
      {@JsonKey(name: "docs") required final List<Announcement> docs,
      @JsonKey(name: "hasNextPage") required this.hasNextPage,
      @JsonKey(name: "hasPrevPage") required this.hasPrevPage,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "nextPage") required this.nextPage,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "pagingCounter") required this.pagingCounter,
      @JsonKey(name: "prevPage") required this.prevPage,
      @JsonKey(name: "totalDocs") required this.totalDocs,
      @JsonKey(name: "totalPages") required this.totalPages})
      : _docs = docs;

  factory _$AnnouncementsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementsResponseImplFromJson(json);

  final List<Announcement> _docs;
  @override
  @JsonKey(name: "docs")
  List<Announcement> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  @JsonKey(name: "hasNextPage")
  final bool hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  final bool hasPrevPage;
  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "nextPage")
  final int nextPage;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "pagingCounter")
  final int pagingCounter;
  @override
  @JsonKey(name: "prevPage")
  final dynamic prevPage;
  @override
  @JsonKey(name: "totalDocs")
  final int totalDocs;
  @override
  @JsonKey(name: "totalPages")
  final int totalPages;

  @override
  String toString() {
    return 'AnnouncementsResponse(docs: $docs, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage, limit: $limit, nextPage: $nextPage, page: $page, pagingCounter: $pagingCounter, prevPage: $prevPage, totalDocs: $totalDocs, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementsResponseImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagingCounter, pagingCounter) ||
                other.pagingCounter == pagingCounter) &&
            const DeepCollectionEquality().equals(other.prevPage, prevPage) &&
            (identical(other.totalDocs, totalDocs) ||
                other.totalDocs == totalDocs) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_docs),
      hasNextPage,
      hasPrevPage,
      limit,
      nextPage,
      page,
      pagingCounter,
      const DeepCollectionEquality().hash(prevPage),
      totalDocs,
      totalPages);

  /// Create a copy of AnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementsResponseImplCopyWith<_$AnnouncementsResponseImpl>
      get copyWith => __$$AnnouncementsResponseImplCopyWithImpl<
          _$AnnouncementsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementsResponseImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementsResponse implements AnnouncementsResponse {
  const factory _AnnouncementsResponse(
          {@JsonKey(name: "docs") required final List<Announcement> docs,
          @JsonKey(name: "hasNextPage") required final bool hasNextPage,
          @JsonKey(name: "hasPrevPage") required final bool hasPrevPage,
          @JsonKey(name: "limit") required final int limit,
          @JsonKey(name: "nextPage") required final int nextPage,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "pagingCounter") required final int pagingCounter,
          @JsonKey(name: "prevPage") required final dynamic prevPage,
          @JsonKey(name: "totalDocs") required final int totalDocs,
          @JsonKey(name: "totalPages") required final int totalPages}) =
      _$AnnouncementsResponseImpl;

  factory _AnnouncementsResponse.fromJson(Map<String, dynamic> json) =
      _$AnnouncementsResponseImpl.fromJson;

  @override
  @JsonKey(name: "docs")
  List<Announcement> get docs;
  @override
  @JsonKey(name: "hasNextPage")
  bool get hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  bool get hasPrevPage;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "nextPage")
  int get nextPage;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "pagingCounter")
  int get pagingCounter;
  @override
  @JsonKey(name: "prevPage")
  dynamic get prevPage;
  @override
  @JsonKey(name: "totalDocs")
  int get totalDocs;
  @override
  @JsonKey(name: "totalPages")
  int get totalPages;

  /// Create a copy of AnnouncementsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementsResponseImplCopyWith<_$AnnouncementsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
