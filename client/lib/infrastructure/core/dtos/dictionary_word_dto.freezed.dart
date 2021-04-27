// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dictionary_word_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryWordDto _$DictionaryWordDtoFromJson(Map<String, dynamic> json) {
  return _DictionaryWordDto.fromJson(json);
}

/// @nodoc
class _$DictionaryWordDtoTearOff {
  const _$DictionaryWordDtoTearOff();

  _DictionaryWordDto call({required String id, required String label}) {
    return _DictionaryWordDto(
      id: id,
      label: label,
    );
  }

  DictionaryWordDto fromJson(Map<String, Object> json) {
    return DictionaryWordDto.fromJson(json);
  }
}

/// @nodoc
const $DictionaryWordDto = _$DictionaryWordDtoTearOff();

/// @nodoc
mixin _$DictionaryWordDto {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryWordDtoCopyWith<DictionaryWordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryWordDtoCopyWith<$Res> {
  factory $DictionaryWordDtoCopyWith(
          DictionaryWordDto value, $Res Function(DictionaryWordDto) then) =
      _$DictionaryWordDtoCopyWithImpl<$Res>;
  $Res call({String id, String label});
}

/// @nodoc
class _$DictionaryWordDtoCopyWithImpl<$Res>
    implements $DictionaryWordDtoCopyWith<$Res> {
  _$DictionaryWordDtoCopyWithImpl(this._value, this._then);

  final DictionaryWordDto _value;
  // ignore: unused_field
  final $Res Function(DictionaryWordDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryWordDtoCopyWith<$Res>
    implements $DictionaryWordDtoCopyWith<$Res> {
  factory _$DictionaryWordDtoCopyWith(
          _DictionaryWordDto value, $Res Function(_DictionaryWordDto) then) =
      __$DictionaryWordDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String label});
}

/// @nodoc
class __$DictionaryWordDtoCopyWithImpl<$Res>
    extends _$DictionaryWordDtoCopyWithImpl<$Res>
    implements _$DictionaryWordDtoCopyWith<$Res> {
  __$DictionaryWordDtoCopyWithImpl(
      _DictionaryWordDto _value, $Res Function(_DictionaryWordDto) _then)
      : super(_value, (v) => _then(v as _DictionaryWordDto));

  @override
  _DictionaryWordDto get _value => super._value as _DictionaryWordDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_DictionaryWordDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DictionaryWordDto implements _DictionaryWordDto {
  _$_DictionaryWordDto({required this.id, required this.label});

  factory _$_DictionaryWordDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DictionaryWordDtoFromJson(json);

  @override
  final String id;
  @override
  final String label;

  @override
  String toString() {
    return 'DictionaryWordDto(id: $id, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$DictionaryWordDtoCopyWith<_DictionaryWordDto> get copyWith =>
      __$DictionaryWordDtoCopyWithImpl<_DictionaryWordDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DictionaryWordDtoToJson(this);
  }
}

abstract class _DictionaryWordDto implements DictionaryWordDto {
  factory _DictionaryWordDto({required String id, required String label}) =
      _$_DictionaryWordDto;

  factory _DictionaryWordDto.fromJson(Map<String, dynamic> json) =
      _$_DictionaryWordDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryWordDtoCopyWith<_DictionaryWordDto> get copyWith =>
      throw _privateConstructorUsedError;
}
