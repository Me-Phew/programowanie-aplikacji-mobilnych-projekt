// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAddress _$LecturerAddressFromJson(Map<String, dynamic> json) {
  return _LecturerAddress.fromJson(json);
}

/// @nodoc
mixin _$LecturerAddress {
  @JsonKey(name: "street")
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "zipCode")
  String get zipCode => throw _privateConstructorUsedError;

  /// Serializes this LecturerAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAddressCopyWith<LecturerAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAddressCopyWith<$Res> {
  factory $LecturerAddressCopyWith(
          LecturerAddress value, $Res Function(LecturerAddress) then) =
      _$LecturerAddressCopyWithImpl<$Res, LecturerAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "street") String street,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "zipCode") String zipCode});
}

/// @nodoc
class _$LecturerAddressCopyWithImpl<$Res, $Val extends LecturerAddress>
    implements $LecturerAddressCopyWith<$Res> {
  _$LecturerAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerAddressImplCopyWith<$Res>
    implements $LecturerAddressCopyWith<$Res> {
  factory _$$LecturerAddressImplCopyWith(_$LecturerAddressImpl value,
          $Res Function(_$LecturerAddressImpl) then) =
      __$$LecturerAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "street") String street,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "zipCode") String zipCode});
}

/// @nodoc
class __$$LecturerAddressImplCopyWithImpl<$Res>
    extends _$LecturerAddressCopyWithImpl<$Res, _$LecturerAddressImpl>
    implements _$$LecturerAddressImplCopyWith<$Res> {
  __$$LecturerAddressImplCopyWithImpl(
      _$LecturerAddressImpl _value, $Res Function(_$LecturerAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? zipCode = null,
  }) {
    return _then(_$LecturerAddressImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerAddressImpl implements _LecturerAddress {
  const _$LecturerAddressImpl(
      {@JsonKey(name: "street") required this.street,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "zipCode") required this.zipCode});

  factory _$LecturerAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerAddressImplFromJson(json);

  @override
  @JsonKey(name: "street")
  final String street;
  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "zipCode")
  final String zipCode;

  @override
  String toString() {
    return 'LecturerAddress(street: $street, city: $city, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, zipCode);

  /// Create a copy of LecturerAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAddressImplCopyWith<_$LecturerAddressImpl> get copyWith =>
      __$$LecturerAddressImplCopyWithImpl<_$LecturerAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAddressImplToJson(
      this,
    );
  }
}

abstract class _LecturerAddress implements LecturerAddress {
  const factory _LecturerAddress(
          {@JsonKey(name: "street") required final String street,
          @JsonKey(name: "city") required final String city,
          @JsonKey(name: "zipCode") required final String zipCode}) =
      _$LecturerAddressImpl;

  factory _LecturerAddress.fromJson(Map<String, dynamic> json) =
      _$LecturerAddressImpl.fromJson;

  @override
  @JsonKey(name: "street")
  String get street;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "zipCode")
  String get zipCode;

  /// Create a copy of LecturerAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAddressImplCopyWith<_$LecturerAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
