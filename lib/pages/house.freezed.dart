// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$House {
  String? get img => throw _privateConstructorUsedError;
  String? get star => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get pricePerDay => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get rooms => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseCopyWith<House> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseCopyWith<$Res> {
  factory $HouseCopyWith(House value, $Res Function(House) then) =
      _$HouseCopyWithImpl<$Res, House>;
  @useResult
  $Res call(
      {String? img,
      String? star,
      String? title,
      String? pricePerDay,
      String? location,
      String? rooms,
      String? area});
}

/// @nodoc
class _$HouseCopyWithImpl<$Res, $Val extends House>
    implements $HouseCopyWith<$Res> {
  _$HouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? star = freezed,
    Object? title = freezed,
    Object? pricePerDay = freezed,
    Object? location = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
  }) {
    return _then(_value.copyWith(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerDay: freezed == pricePerDay
          ? _value.pricePerDay
          : pricePerDay // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HouseCopyWith<$Res> implements $HouseCopyWith<$Res> {
  factory _$$_HouseCopyWith(_$_House value, $Res Function(_$_House) then) =
      __$$_HouseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? img,
      String? star,
      String? title,
      String? pricePerDay,
      String? location,
      String? rooms,
      String? area});
}

/// @nodoc
class __$$_HouseCopyWithImpl<$Res> extends _$HouseCopyWithImpl<$Res, _$_House>
    implements _$$_HouseCopyWith<$Res> {
  __$$_HouseCopyWithImpl(_$_House _value, $Res Function(_$_House) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = freezed,
    Object? star = freezed,
    Object? title = freezed,
    Object? pricePerDay = freezed,
    Object? location = freezed,
    Object? rooms = freezed,
    Object? area = freezed,
  }) {
    return _then(_$_House(
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerDay: freezed == pricePerDay
          ? _value.pricePerDay
          : pricePerDay // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_House implements _House {
  _$_House(
      {this.img,
      this.star,
      this.title,
      this.pricePerDay,
      this.location,
      this.rooms,
      this.area});

  @override
  final String? img;
  @override
  final String? star;
  @override
  final String? title;
  @override
  final String? pricePerDay;
  @override
  final String? location;
  @override
  final String? rooms;
  @override
  final String? area;

  @override
  String toString() {
    return 'House(img: $img, star: $star, title: $title, pricePerDay: $pricePerDay, location: $location, rooms: $rooms, area: $area)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_House &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pricePerDay, pricePerDay) ||
                other.pricePerDay == pricePerDay) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, img, star, title, pricePerDay, location, rooms, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HouseCopyWith<_$_House> get copyWith =>
      __$$_HouseCopyWithImpl<_$_House>(this, _$identity);
}

abstract class _House implements House {
  factory _House(
      {final String? img,
      final String? star,
      final String? title,
      final String? pricePerDay,
      final String? location,
      final String? rooms,
      final String? area}) = _$_House;

  @override
  String? get img;
  @override
  String? get star;
  @override
  String? get title;
  @override
  String? get pricePerDay;
  @override
  String? get location;
  @override
  String? get rooms;
  @override
  String? get area;
  @override
  @JsonKey(ignore: true)
  _$$_HouseCopyWith<_$_House> get copyWith =>
      throw _privateConstructorUsedError;
}
