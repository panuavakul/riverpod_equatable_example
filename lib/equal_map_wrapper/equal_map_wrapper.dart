import 'package:freezed_annotation/freezed_annotation.dart';

part 'equal_map_wrapper.freezed.dart';

@freezed
class EqualMapWrapper<T, A> with _$EqualMapWrapper {
  const factory EqualMapWrapper({
    required Map<T, A> map,
  }) = _EqualMapWrapper;
}
