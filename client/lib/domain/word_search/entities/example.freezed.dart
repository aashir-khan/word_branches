// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExampleTearOff {
  const _$ExampleTearOff();

// ignore: unused_element
  _Example call(
      {@required String text,
      KtList<String> definitions,
      KtList<IdText> registers}) {
    return _Example(
      text: text,
      definitions: definitions,
      registers: registers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Example = _$ExampleTearOff();

/// @nodoc
mixin _$Example {
  String get text;
  KtList<String> get definitions;
  KtList<IdText> get registers;

  @JsonKey(ignore: true)
  $ExampleCopyWith<Example> get copyWith;
}

/// @nodoc
abstract class $ExampleCopyWith<$Res> {
  factory $ExampleCopyWith(Example value, $Res Function(Example) then) =
      _$ExampleCopyWithImpl<$Res>;
  $Res call(
      {String text, KtList<String> definitions, KtList<IdText> registers});
}

/// @nodoc
class _$ExampleCopyWithImpl<$Res> implements $ExampleCopyWith<$Res> {
  _$ExampleCopyWithImpl(this._value, this._then);

  final Example _value;
  // ignore: unused_field
  final $Res Function(Example) _then;

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
          : definitions as KtList<String>,
      registers:
          registers == freezed ? _value.registers : registers as KtList<IdText>,
    ));
  }
}

/// @nodoc
abstract class _$ExampleCopyWith<$Res> implements $ExampleCopyWith<$Res> {
  factory _$ExampleCopyWith(_Example value, $Res Function(_Example) then) =
      __$ExampleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text, KtList<String> definitions, KtList<IdText> registers});
}

/// @nodoc
class __$ExampleCopyWithImpl<$Res> extends _$ExampleCopyWithImpl<$Res>
    implements _$ExampleCopyWith<$Res> {
  __$ExampleCopyWithImpl(_Example _value, $Res Function(_Example) _then)
      : super(_value, (v) => _then(v as _Example));

  @override
  _Example get _value => super._value as _Example;

  @override
  $Res call({
    Object text = freezed,
    Object definitions = freezed,
    Object registers = freezed,
  }) {
    return _then(_Example(
      text: text == freezed ? _value.text : text as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions as KtList<String>,
      registers:
          registers == freezed ? _value.registers : registers as KtList<IdText>,
    ));
  }
}

/// @nodoc
class _$_Example implements _Example {
  const _$_Example({@required this.text, this.definitions, this.registers})
      : assert(text != null);

  @override
  final String text;
  @override
  final KtList<String> definitions;
  @override
  final KtList<IdText> registers;

  @override
  String toString() {
    return 'Example(text: $text, definitions: $definitions, registers: $registers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Example &&
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
  _$ExampleCopyWith<_Example> get copyWith =>
      __$ExampleCopyWithImpl<_Example>(this, _$identity);
}

abstract class _Example implements Example {
  const factory _Example(
      {@required String text,
      KtList<String> definitions,
      KtList<IdText> registers}) = _$_Example;

  @override
  String get text;
  @override
  KtList<String> get definitions;
  @override
  KtList<IdText> get registers;
  @override
  @JsonKey(ignore: true)
  _$ExampleCopyWith<_Example> get copyWith;
}
