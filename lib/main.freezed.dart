// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreezedMapWrapper<T, A> {
  Map<T, A> get map => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedMapWrapperCopyWith<T, A, FreezedMapWrapper<T, A>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedMapWrapperCopyWith<T, A, $Res> {
  factory $FreezedMapWrapperCopyWith(FreezedMapWrapper<T, A> value,
          $Res Function(FreezedMapWrapper<T, A>) then) =
      _$FreezedMapWrapperCopyWithImpl<T, A, $Res, FreezedMapWrapper<T, A>>;
  @useResult
  $Res call({Map<T, A> map});
}

/// @nodoc
class _$FreezedMapWrapperCopyWithImpl<T, A, $Res,
        $Val extends FreezedMapWrapper<T, A>>
    implements $FreezedMapWrapperCopyWith<T, A, $Res> {
  _$FreezedMapWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_value.copyWith(
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<T, A>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedMapWrapperImplCopyWith<T, A, $Res>
    implements $FreezedMapWrapperCopyWith<T, A, $Res> {
  factory _$$FreezedMapWrapperImplCopyWith(_$FreezedMapWrapperImpl<T, A> value,
          $Res Function(_$FreezedMapWrapperImpl<T, A>) then) =
      __$$FreezedMapWrapperImplCopyWithImpl<T, A, $Res>;
  @override
  @useResult
  $Res call({Map<T, A> map});
}

/// @nodoc
class __$$FreezedMapWrapperImplCopyWithImpl<T, A, $Res>
    extends _$FreezedMapWrapperCopyWithImpl<T, A, $Res,
        _$FreezedMapWrapperImpl<T, A>>
    implements _$$FreezedMapWrapperImplCopyWith<T, A, $Res> {
  __$$FreezedMapWrapperImplCopyWithImpl(_$FreezedMapWrapperImpl<T, A> _value,
      $Res Function(_$FreezedMapWrapperImpl<T, A>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_$FreezedMapWrapperImpl<T, A>(
      map: null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<T, A>,
    ));
  }
}

/// @nodoc

class _$FreezedMapWrapperImpl<T, A> implements _FreezedMapWrapper<T, A> {
  const _$FreezedMapWrapperImpl({required final Map<T, A> map}) : _map = map;

  final Map<T, A> _map;
  @override
  Map<T, A> get map {
    if (_map is EqualUnmodifiableMapView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'FreezedMapWrapper<$T, $A>(map: $map)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedMapWrapperImpl<T, A> &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_map));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedMapWrapperImplCopyWith<T, A, _$FreezedMapWrapperImpl<T, A>>
      get copyWith => __$$FreezedMapWrapperImplCopyWithImpl<T, A,
          _$FreezedMapWrapperImpl<T, A>>(this, _$identity);
}

abstract class _FreezedMapWrapper<T, A> implements FreezedMapWrapper<T, A> {
  const factory _FreezedMapWrapper({required final Map<T, A> map}) =
      _$FreezedMapWrapperImpl<T, A>;

  @override
  Map<T, A> get map;
  @override
  @JsonKey(ignore: true)
  _$$FreezedMapWrapperImplCopyWith<T, A, _$FreezedMapWrapperImpl<T, A>>
      get copyWith => throw _privateConstructorUsedError;
}
