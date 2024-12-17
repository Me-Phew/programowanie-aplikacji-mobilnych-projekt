// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Faculty _$FacultyFromJson(Map<String, dynamic> json) {
  return _Faculty.fromJson(json);
}

/// @nodoc
mixin _$Faculty {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "university")
  int get university => throw _privateConstructorUsedError;
  @JsonKey(name: "classrooms")
  List<int> get classrooms => throw _privateConstructorUsedError;
  @JsonKey(name: "coursesOfStudy")
  List<int> get coursesOfStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: "contact")
  Contact get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Faculty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacultyCopyWith<Faculty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyCopyWith<$Res> {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) then) =
      _$FacultyCopyWithImpl<$Res, Faculty>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "university") int university,
      @JsonKey(name: "classrooms") List<int> classrooms,
      @JsonKey(name: "coursesOfStudy") List<int> coursesOfStudy,
      @JsonKey(name: "address") Address address,
      @JsonKey(name: "contact") Contact contact,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  $AddressCopyWith<$Res> get address;
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$FacultyCopyWithImpl<$Res, $Val extends Faculty>
    implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? university = null,
    Object? classrooms = null,
    Object? coursesOfStudy = null,
    Object? address = null,
    Object? contact = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as int,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<int>,
      coursesOfStudy: null == coursesOfStudy
          ? _value.coursesOfStudy
          : coursesOfStudy // ignore: cast_nullable_to_non_nullable
              as List<int>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
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

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacultyImplCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$$FacultyImplCopyWith(
          _$FacultyImpl value, $Res Function(_$FacultyImpl) then) =
      __$$FacultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "university") int university,
      @JsonKey(name: "classrooms") List<int> classrooms,
      @JsonKey(name: "coursesOfStudy") List<int> coursesOfStudy,
      @JsonKey(name: "address") Address address,
      @JsonKey(name: "contact") Contact contact,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "createdAt") DateTime createdAt});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$FacultyImplCopyWithImpl<$Res>
    extends _$FacultyCopyWithImpl<$Res, _$FacultyImpl>
    implements _$$FacultyImplCopyWith<$Res> {
  __$$FacultyImplCopyWithImpl(
      _$FacultyImpl _value, $Res Function(_$FacultyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? university = null,
    Object? classrooms = null,
    Object? coursesOfStudy = null,
    Object? address = null,
    Object? contact = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$FacultyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as int,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<int>,
      coursesOfStudy: null == coursesOfStudy
          ? _value._coursesOfStudy
          : coursesOfStudy // ignore: cast_nullable_to_non_nullable
              as List<int>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
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
class _$FacultyImpl implements _Faculty {
  const _$FacultyImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "university") required this.university,
      @JsonKey(name: "classrooms") required final List<int> classrooms,
      @JsonKey(name: "coursesOfStudy") required final List<int> coursesOfStudy,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "contact") required this.contact,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "createdAt") required this.createdAt})
      : _classrooms = classrooms,
        _coursesOfStudy = coursesOfStudy;

  factory _$FacultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacultyImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "university")
  final int university;
  final List<int> _classrooms;
  @override
  @JsonKey(name: "classrooms")
  List<int> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  final List<int> _coursesOfStudy;
  @override
  @JsonKey(name: "coursesOfStudy")
  List<int> get coursesOfStudy {
    if (_coursesOfStudy is EqualUnmodifiableListView) return _coursesOfStudy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesOfStudy);
  }

  @override
  @JsonKey(name: "address")
  final Address address;
  @override
  @JsonKey(name: "contact")
  final Contact contact;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'Faculty(id: $id, name: $name, university: $university, classrooms: $classrooms, coursesOfStudy: $coursesOfStudy, address: $address, contact: $contact, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacultyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.university, university) ||
                other.university == university) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            const DeepCollectionEquality()
                .equals(other._coursesOfStudy, _coursesOfStudy) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contact, contact) || other.contact == contact) &&
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
      name,
      university,
      const DeepCollectionEquality().hash(_classrooms),
      const DeepCollectionEquality().hash(_coursesOfStudy),
      address,
      contact,
      updatedAt,
      createdAt);

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      __$$FacultyImplCopyWithImpl<_$FacultyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacultyImplToJson(
      this,
    );
  }
}

abstract class _Faculty implements Faculty {
  const factory _Faculty(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "university") required final int university,
      @JsonKey(name: "classrooms") required final List<int> classrooms,
      @JsonKey(name: "coursesOfStudy") required final List<int> coursesOfStudy,
      @JsonKey(name: "address") required final Address address,
      @JsonKey(name: "contact") required final Contact contact,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "createdAt")
      required final DateTime createdAt}) = _$FacultyImpl;

  factory _Faculty.fromJson(Map<String, dynamic> json) = _$FacultyImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "university")
  int get university;
  @override
  @JsonKey(name: "classrooms")
  List<int> get classrooms;
  @override
  @JsonKey(name: "coursesOfStudy")
  List<int> get coursesOfStudy;
  @override
  @JsonKey(name: "address")
  Address get address;
  @override
  @JsonKey(name: "contact")
  Contact get contact;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of Faculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacultyImplCopyWith<_$FacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
