// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SenseTearOff {
  const _$SenseTearOff();

  _Sense call(
      {KtList<String> definitions,
      KtList<TextType> notes,
      KtList<Example> examples,
      KtList<Sense> subsenses,
      KtList<IdText> registers}) {
    return _Sense(
      definitions: definitions,
      notes: notes,
      examples: examples,
      subsenses: subsenses,
      registers: registers,
    );
  }
}

// ignore: unused_element
const $Sense = _$SenseTearOff();

mixin _$Sense {
  KtList<String> get definitions;
  KtList<TextType> get notes;
  KtList<Example> get examples;
  KtList<Sense> get subsenses;
  KtList<IdText> get registers;

  $SenseCopyWith<Sense> get copyWith;
}

abstract class $SenseCopyWith<$Res> {
  factory $SenseCopyWith(Sense value, $Res Function(Sense) then) =
      _$SenseCopyWithImpl<$Res>;
  $Res call(
      {KtList<String> definitions,
      KtList<TextType> notes,
      KtList<Example> examples,
      KtList<Sense> subsenses,
      KtList<IdText> registers});
}

class _$SenseCopyWithImpl<$Res> implements $SenseCopyWith<$Res> {
  _$SenseCopyWithImpl(this._value, this._then);

  final Sense _value;
  // ignore: unused_field
  final $Res Function(Sense) _then;

  @override
  $Res call({
    Object definitions = freezed,
    Object notes = freezed,
    Object examples = freezed,
    Object subsenses = freezed,
    Object registers = freezed,
  }) {
    return _then(_value.copyWith(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as KtList<String>,
      notes: notes == freezed ? _value.notes : notes as KtList<TextType>,
      examples:
          examples == freezed ? _value.examples : examples as KtList<Example>,
      subsenses:
          subsenses == freezed ? _value.subsenses : subsenses as KtList<Sense>,
      registers:
          registers == freezed ? _value.registers : registers as KtList<IdText>,
    ));
  }
}

abstract class _$SenseCopyWith<$Res> implements $SenseCopyWith<$Res> {
  factory _$SenseCopyWith(_Sense value, $Res Function(_Sense) then) =
      __$SenseCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<String> definitions,
      KtList<TextType> notes,
      KtList<Example> examples,
      KtList<Sense> subsenses,
      KtList<IdText> registers});
}

class __$SenseCopyWithImpl<$Res> extends _$SenseCopyWithImpl<$Res>
    implements _$SenseCopyWith<$Res> {
  __$SenseCopyWithImpl(_Sense _value, $Res Function(_Sense) _then)
      : super(_value, (v) => _then(v as _Sense));

  @override
  _Sense get _value => super._value as _Sense;

  @override
  $Res call({
    Object definitions = freezed,
    Object notes = freezed,
    Object examples = freezed,
    Object subsenses = freezed,
    Object registers = freezed,
  }) {
    return _then(_Sense(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as KtList<String>,
      notes: notes == freezed ? _value.notes : notes as KtList<TextType>,
      examples:
          examples == freezed ? _value.examples : examples as KtList<Example>,
      subsenses:
          subsenses == freezed ? _value.subsenses : subsenses as KtList<Sense>,
      registers:
          registers == freezed ? _value.registers : registers as KtList<IdText>,
    ));
  }
}

class _$_Sense implements _Sense {
  const _$_Sense(
      {this.definitions,
      this.notes,
      this.examples,
      this.subsenses,
      this.registers});

  @override
  final KtList<String> definitions;
  @override
  final KtList<TextType> notes;
  @override
  final KtList<Example> examples;
  @override
  final KtList<Sense> subsenses;
  @override
  final KtList<IdText> registers;

  @override
  String toString() {
    return 'Sense(definitions: $definitions, notes: $notes, examples: $examples, subsenses: $subsenses, registers: $registers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sense &&
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
                    .equals(other.registers, registers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(definitions) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(examples) ^
      const DeepCollectionEquality().hash(subsenses) ^
      const DeepCollectionEquality().hash(registers);

  @override
  _$SenseCopyWith<_Sense> get copyWith =>
      __$SenseCopyWithImpl<_Sense>(this, _$identity);
}

abstract class _Sense implements Sense {
  const factory _Sense(
      {KtList<String> definitions,
      KtList<TextType> notes,
      KtList<Example> examples,
      KtList<Sense> subsenses,
      KtList<IdText> registers}) = _$_Sense;

  @override
  KtList<String> get definitions;
  @override
  KtList<TextType> get notes;
  @override
  KtList<Example> get examples;
  @override
  KtList<Sense> get subsenses;
  @override
  KtList<IdText> get registers;
  @override
  _$SenseCopyWith<_Sense> get copyWith;
}
