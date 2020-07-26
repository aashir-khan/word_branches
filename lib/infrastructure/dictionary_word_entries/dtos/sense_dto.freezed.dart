// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SenseDto _$SenseDtoFromJson(Map<String, dynamic> json) {
  return _SenseDto.fromJson(json);
}

class _$SenseDtoTearOff {
  const _$SenseDtoTearOff();

// ignore: unused_element
  _SenseDto call(
      {List<String> definitions,
      List<TextTypeDto> notes,
      List<ExampleDto> examples,
      List<SenseDto> subsenses,
      List<IdTextDto> registers,
      String type}) {
    return _SenseDto(
      definitions: definitions,
      notes: notes,
      examples: examples,
      subsenses: subsenses,
      registers: registers,
      type: type,
    );
  }
}

// ignore: unused_element
const $SenseDto = _$SenseDtoTearOff();

mixin _$SenseDto {
  List<String> get definitions;
  List<TextTypeDto> get notes;
  List<ExampleDto> get examples;
  List<SenseDto> get subsenses;
  List<IdTextDto> get registers;
  String get type;

  Map<String, dynamic> toJson();
  $SenseDtoCopyWith<SenseDto> get copyWith;
}

abstract class $SenseDtoCopyWith<$Res> {
  factory $SenseDtoCopyWith(SenseDto value, $Res Function(SenseDto) then) =
      _$SenseDtoCopyWithImpl<$Res>;
  $Res call(
      {List<String> definitions,
      List<TextTypeDto> notes,
      List<ExampleDto> examples,
      List<SenseDto> subsenses,
      List<IdTextDto> registers,
      String type});
}

class _$SenseDtoCopyWithImpl<$Res> implements $SenseDtoCopyWith<$Res> {
  _$SenseDtoCopyWithImpl(this._value, this._then);

  final SenseDto _value;
  // ignore: unused_field
  final $Res Function(SenseDto) _then;

  @override
  $Res call({
    Object definitions = freezed,
    Object notes = freezed,
    Object examples = freezed,
    Object subsenses = freezed,
    Object registers = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as List<String>,
      notes: notes == freezed ? _value.notes : notes as List<TextTypeDto>,
      examples:
          examples == freezed ? _value.examples : examples as List<ExampleDto>,
      subsenses:
          subsenses == freezed ? _value.subsenses : subsenses as List<SenseDto>,
      registers: registers == freezed
          ? _value.registers
          : registers as List<IdTextDto>,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class _$SenseDtoCopyWith<$Res> implements $SenseDtoCopyWith<$Res> {
  factory _$SenseDtoCopyWith(_SenseDto value, $Res Function(_SenseDto) then) =
      __$SenseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> definitions,
      List<TextTypeDto> notes,
      List<ExampleDto> examples,
      List<SenseDto> subsenses,
      List<IdTextDto> registers,
      String type});
}

class __$SenseDtoCopyWithImpl<$Res> extends _$SenseDtoCopyWithImpl<$Res>
    implements _$SenseDtoCopyWith<$Res> {
  __$SenseDtoCopyWithImpl(_SenseDto _value, $Res Function(_SenseDto) _then)
      : super(_value, (v) => _then(v as _SenseDto));

  @override
  _SenseDto get _value => super._value as _SenseDto;

  @override
  $Res call({
    Object definitions = freezed,
    Object notes = freezed,
    Object examples = freezed,
    Object subsenses = freezed,
    Object registers = freezed,
    Object type = freezed,
  }) {
    return _then(_SenseDto(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as List<String>,
      notes: notes == freezed ? _value.notes : notes as List<TextTypeDto>,
      examples:
          examples == freezed ? _value.examples : examples as List<ExampleDto>,
      subsenses:
          subsenses == freezed ? _value.subsenses : subsenses as List<SenseDto>,
      registers: registers == freezed
          ? _value.registers
          : registers as List<IdTextDto>,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$_SenseDto implements _SenseDto {
  const _$_SenseDto(
      {this.definitions,
      this.notes,
      this.examples,
      this.subsenses,
      this.registers,
      this.type});

  factory _$_SenseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SenseDtoFromJson(json);

  @override
  final List<String> definitions;
  @override
  final List<TextTypeDto> notes;
  @override
  final List<ExampleDto> examples;
  @override
  final List<SenseDto> subsenses;
  @override
  final List<IdTextDto> registers;
  @override
  final String type;

  @override
  String toString() {
    return 'SenseDto(definitions: $definitions, notes: $notes, examples: $examples, subsenses: $subsenses, registers: $registers, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SenseDto &&
            (identical(other.definitions, definitions) ||
                const DeepCollectionEquality()
                    .equals(other.definitions, definitions)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.examples, examples) ||
                const DeepCollectionEquality()
                    .equals(other.examples, examples)) &&
            (identical(other.subsenses, subsenses) ||
                const DeepCollectionEquality()
                    .equals(other.subsenses, subsenses)) &&
            (identical(other.registers, registers) ||
                const DeepCollectionEquality()
                    .equals(other.registers, registers)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(definitions) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(examples) ^
      const DeepCollectionEquality().hash(subsenses) ^
      const DeepCollectionEquality().hash(registers) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$SenseDtoCopyWith<_SenseDto> get copyWith =>
      __$SenseDtoCopyWithImpl<_SenseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SenseDtoToJson(this);
  }
}

abstract class _SenseDto implements SenseDto {
  const factory _SenseDto(
      {List<String> definitions,
      List<TextTypeDto> notes,
      List<ExampleDto> examples,
      List<SenseDto> subsenses,
      List<IdTextDto> registers,
      String type}) = _$_SenseDto;

  factory _SenseDto.fromJson(Map<String, dynamic> json) = _$_SenseDto.fromJson;

  @override
  List<String> get definitions;
  @override
  List<TextTypeDto> get notes;
  @override
  List<ExampleDto> get examples;
  @override
  List<SenseDto> get subsenses;
  @override
  List<IdTextDto> get registers;
  @override
  String get type;
  @override
  _$SenseDtoCopyWith<_SenseDto> get copyWith;
}
