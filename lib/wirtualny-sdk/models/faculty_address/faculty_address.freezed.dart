// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FacultyAddress _$FacultyAddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$FacultyAddress {
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "zipCode")
  String get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "street")
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: "buildingNumber")
  String get buildingNumber => throw _privateConstructorUsedError;

  /// Serializes this FacultyAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacultyAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacultyAddressCopyWith<FacultyAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyAddressCopyWith<$Res> {
  factory $FacultyAddressCopyWith(
          FacultyAddress value, $Res Function(FacultyAddress) then) =
      _$FacultyAddressCopyWithImpl<$Res, FacultyAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "country") String country,
      @JsonKey(name: "zipCode") String zipCode,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "street") String street,
      @JsonKey(name: "buildingNumber") String buildingNumber});
}

/// @nodoc
class _$FacultyAddressCopyWithImpl<$Res, $Val extends FacultyAddress>
    implements $FacultyAddressCopyWith<$Res> {
  _$FacultyAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacultyAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? zipCode = null,
    Object? city = null,
    Object? street = null,
    Object? buildingNumber = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res>
    implements $FacultyAddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country") String country,
      @JsonKey(name: "zipCode") String zipCode,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "street") String street,
      @JsonKey(name: "buildingNumber") String buildingNumber});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$FacultyAddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of FacultyAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? zipCode = null,
    Object? city = null,
    Object? street = null,
    Object? buildingNumber = null,
  }) {
    return _then(_$AddressImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      buildingNumber: null == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "country") required this.country,
      @JsonKey(name: "zipCode") required this.zipCode,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "street") required this.street,
      @JsonKey(name: "buildingNumber") required this.buildingNumber});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "zipCode")
  final String zipCode;
  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "street")
  final String street;
  @override
  @JsonKey(name: "buildingNumber")
  final String buildingNumber;

  @override
  String toString() {
    return 'FacultyAddress(country: $country, zipCode: $zipCode, city: $city, street: $street, buildingNumber: $buildingNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, country, zipCode, city, street, buildingNumber);

  /// Create a copy of FacultyAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements FacultyAddress {
  const factory _Address(
      {@JsonKey(name: "country") required final String country,
      @JsonKey(name: "zipCode") required final String zipCode,
      @JsonKey(name: "city") required final String city,
      @JsonKey(name: "street") required final String street,
      @JsonKey(name: "buildingNumber")
      required final String buildingNumber}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "zipCode")
  String get zipCode;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "street")
  String get street;
  @override
  @JsonKey(name: "buildingNumber")
  String get buildingNumber;

  /// Create a copy of FacultyAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
