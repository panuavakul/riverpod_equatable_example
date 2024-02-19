// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equal_map_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EqualMapWrapper<T, A> {
  Map<T, A> get map => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EqualMapWrapperCopyWith<T, A, EqualMapWrapper<T, A>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EqualMapWrapperCopyWith<T, A, $Res> {
  factory $EqualMapWrapperCopyWith(EqualMapWrapper<T, A> value,
          $Res Function(EqualMapWrapper<T, A>) then) =
      _$EqualMapWrapperCopyWithImpl<T, A, $Res, EqualMapWrapper<T, A>>;
  @useResult
  $Res call({Map<T, A> map});
}

/// @nodoc
class _$EqualMapWrapperCopyWithImpl<T, A, $Res,
        $Val extends EqualMapWrapper<T, A>>
    implements $EqualMapWrapperCopyWith<T, A, $Res> {
  _$EqualMapWrapperCopyWithImpl(this._value, this._then);

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
abstract class _$$EqualMapWrapperImplCopyWith<T, A, $Res>
    implements $EqualMapWrapperCopyWith<T, A, $Res> {
  factory _$$EqualMapWrapperImplCopyWith(_$EqualMapWrapperImpl<T, A> value,
          $Res Function(_$EqualMapWrapperImpl<T, A>) then) =
      __$$EqualMapWrapperImplCopyWithImpl<T, A, $Res>;
  @override
  @useResult
  $Res call({Map<T, A> map});
}

/// @nodoc
class __$$EqualMapWrapperImplCopyWithImpl<T, A, $Res>
    extends _$EqualMapWrapperCopyWithImpl<T, A, $Res,
        _$EqualMapWrapperImpl<T, A>>
    implements _$$EqualMapWrapperImplCopyWith<T, A, $Res> {
  __$$EqualMapWrapperImplCopyWithImpl(_$EqualMapWrapperImpl<T, A> _value,
      $Res Function(_$EqualMapWrapperImpl<T, A>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_$EqualMapWrapperImpl<T, A>(
      map: null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<T, A>,
    ));
  }
}

/// @nodoc

class _$EqualMapWrapperImpl<T, A> implements _EqualMapWrapper<T, A> {
  const _$EqualMapWrapperImpl({required final Map<T, A> map}) : _map = map;

  final Map<T, A> _map;
  @override
  Map<T, A> get map {
    if (_map is EqualUnmodifiableMapView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'EqualMapWrapper<$T, $A>(map: $map)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EqualMapWrapperImpl<T, A> &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_map));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EqualMapWrapperImplCopyWith<T, A, _$EqualMapWrapperImpl<T, A>>
      get copyWith => __$$EqualMapWrapperImplCopyWithImpl<T, A,
          _$EqualMapWrapperImpl<T, A>>(this, _$identity);
}

abstract class _EqualMapWrapper<T, A> implements EqualMapWrapper<T, A> {
  const factory _EqualMapWrapper({required final Map<T, A> map}) =
      _$EqualMapWrapperImpl<T, A>;

  @override
  Map<T, A> get map;
  @override
  @JsonKey(ignore: true)
  _$$EqualMapWrapperImplCopyWith<T, A, _$EqualMapWrapperImpl<T, A>>
      get copyWith => throw _privateConstructorUsedError;
}
