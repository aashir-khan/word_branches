// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'example_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExampleDto _$ExampleDtoFromJson(Map<String, dynamic> json) {
  return _ExampleDto.fromJson(json);
}

class _$ExampleDtoTearOff {
  const _$ExampleDtoTearOff();

  _ExampleDto call(
      {@required String text,
      List<String> definitions,
      List<IdTextDto> registers}) {
    return _ExampleDto(
      text: text,
      definitions: definitions,
      registers: registers,
    );
  }
}

// ignore: unused_element
const $ExampleDto = _$ExampleDtoTearOff();

mixin _$ExampleDto {
  String get text;
  List<String> get definitions;
  List<IdTextDto> get registers;

  Map<String, dynamic> toJson();
  $ExampleDtoCopyWith<ExampleDto> get copyWith;
}

abstract class $ExampleDtoCopyWith<$Res> {
  factory $ExampleDtoCopyWith(
          ExampleDto value, $Res Function(ExampleDto) then) =
      _$ExampleDtoCopyWithImpl<$Res>;
  $Res call({String text, List<String> definitions, List<IdTextDto> registers});
}

class _$ExampleDtoCopyWithImpl<$Res> implements $ExampleDtoCopyWith<$Res> {
  _$ExampleDtoCopyWithImpl(this._value, this._then);

  final ExampleDto _value;
  // ignore: unused_field
  final $Res Function(ExampleDto) _then;

  @override
  $Res call({
    Object text = freezed,
    Object definitions = freezed,
    Object registers = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as List<String>,
      registers: registers == freezed
          ? _value.registers
          : registers as List<IdTextDto>,
    ));
  }
}

abstract class _$ExampleDtoCopyWith<$Res> implements $ExampleDtoCopyWith<$Res> {
  factory _$ExampleDtoCopyWith(
          _ExampleDto value, $Res Function(_ExampleDto) then) =
      __$ExampleDtoCopyWithImpl<$Res>;
  @override
  $Res call({String text, List<String> definitions, List<IdTextDto> registers});
}

class __$ExampleDtoCopyWithImpl<$Res> extends _$ExampleDtoCopyWithImpl<$Res>
    implements _$ExampleDtoCopyWith<$Res> {
  __$ExampleDtoCopyWithImpl(
      _ExampleDto _value, $Res Function(_ExampleDto) _then)
      : super(_value, (v) => _then(v as _ExampleDto));

  @override
  _ExampleDto get _value => super._value as _ExampleDto;

  @override
  $Res call({
    Object text = freezed,
    Object definitions = freezed,
    Object registers = freezed,
  }) {
    return _then(_ExampleDto(
      text: text == freezed ? _value.text : text as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as List<String>,
      registers: registers == freezed
          ? _value.registers
          : registers as List<IdTextDto>,
    ));
  }
}

@JsonSerializable()
class _$_ExampleDto implements _ExampleDto {
  const _$_ExampleDto({@required this.text, this.definitions, this.registers})
      : assert(text != null);

  factory _$_ExampleDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExampleDtoFromJson(json);

  @override
  final String text;
  @override
  final List<String> definitions;
  @override
  final List<IdTextDto> registers;

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
      {@required String text,
      List<String> definitions,
      List<IdTextDto> registers}) = _$_ExampleDto;

  factory _ExampleDto.fromJson(Map<String, dynamic> json) =
      _$_ExampleDto.fromJson;

  @override
  String get text;
  @override
  List<String> get definitions;
  @override
  List<IdTextDto> get registers;
  @override
  _$ExampleDtoCopyWith<_ExampleDto> get copyWith;
}
