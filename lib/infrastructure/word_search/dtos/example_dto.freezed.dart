// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'example_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExampleDto _$ExampleDtoFromJson(Map<String, dynamic> json) {
  return _ExampleDto.fromJson(json);
}

/// @nodoc
class _$ExampleDtoTearOff {
  const _$ExampleDtoTearOff();

  _ExampleDto call(
      {required String text,
      List<String>? definitions,
      List<IdTextDto>? registers}) {
    return _ExampleDto(
      text: text,
      definitions: definitions,
      registers: registers,
    );
  }

  ExampleDto fromJson(Map<String, Object> json) {
    return ExampleDto.fromJson(json);
  }
}

/// @nodoc
const $ExampleDto = _$ExampleDtoTearOff();

/// @nodoc
mixin _$ExampleDto {
  String get text => throw _privateConstructorUsedError;
  List<String>? get definitions => throw _privateConstructorUsedError;
  List<IdTextDto>? get registers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleDtoCopyWith<ExampleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleDtoCopyWith<$Res> {
  factory $ExampleDtoCopyWith(
          ExampleDto value, $Res Function(ExampleDto) then) =
      _$ExampleDtoCopyWithImpl<$Res>;
  $Res call(
      {String text, List<String>? definitions, List<IdTextDto>? registers});
}

/// @nodoc
class _$ExampleDtoCopyWithImpl<$Res> implements $ExampleDtoCopyWith<$Res> {
  _$ExampleDtoCopyWithImpl(this._value, this._then);

  final ExampleDto _value;
  // ignore: unused_field
  final $Res Function(ExampleDto) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? definitions = freezed,
    Object? registers = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      registers: registers == freezed
          ? _value.registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<IdTextDto>?,
    ));
  }
}

/// @nodoc
abstract class _$ExampleDtoCopyWith<$Res> implements $ExampleDtoCopyWith<$Res> {
  factory _$ExampleDtoCopyWith(
          _ExampleDto value, $Res Function(_ExampleDto) then) =
      __$ExampleDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text, List<String>? definitions, List<IdTextDto>? registers});
}

/// @nodoc
class __$ExampleDtoCopyWithImpl<$Res> extends _$ExampleDtoCopyWithImpl<$Res>
    implements _$ExampleDtoCopyWith<$Res> {
  __$ExampleDtoCopyWithImpl(
      _ExampleDto _value, $Res Function(_ExampleDto) _then)
      : super(_value, (v) => _then(v as _ExampleDto));

  @override
  _ExampleDto get _value => super._value as _ExampleDto;

  @override
  $Res call({
    Object? text = freezed,
    Object? definitions = freezed,
    Object? registers = freezed,
  }) {
    return _then(_ExampleDto(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      registers: registers == freezed
          ? _value.registers
          : registers // ignore: cast_nullable_to_non_nullable
              as List<IdTextDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExampleDto implements _ExampleDto {
  const _$_ExampleDto({required this.text, this.definitions, this.registers});

  factory _$_ExampleDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExampleDtoFromJson(json);

  @override
  final String text;
  @override
  final List<String>? definitions;
  @override
  final List<IdTextDto>? registers;

  @override
  String toString() {
    return 'ExampleDto(text: $text, definitions: $definitions, registers: $registers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExampleDto &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.definitions, definitions) ||
                const DeepCollectionEquality()
                    .equals(other.definitions, definitions)) &&
            (identical(other.registers, registers) ||
                const DeepCollectionEquality()
                    .equals(other.registers, registers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(definitions) ^
      const DeepCollectionEquality().hash(registers);

  @JsonKey(ignore: true)
  @override
  _$ExampleDtoCopyWith<_ExampleDto> get copyWith =>
      __$ExampleDtoCopyWithImpl<_ExampleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExampleDtoToJson(this);
  }
}

abstract class _ExampleDto implements ExampleDto {
  const factory _ExampleDto(
      {required String text,
      List<String>? definitions,
      List<IdTextDto>? registers}) = _$_ExampleDto;

  factory _ExampleDto.fromJson(Map<String, dynamic> json) =
      _$_ExampleDto.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  List<String>? get definitions => throw _privateConstructorUsedError;
  @override
  List<IdTextDto>? get registers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExampleDtoCopyWith<_ExampleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
