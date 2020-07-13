// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'text_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TextTypeTearOff {
  const _$TextTypeTearOff();

  _TextType call({@required String text, @required String type}) {
    return _TextType(
      text: text,
      type: type,
    );
  }
}

// ignore: unused_element
const $TextType = _$TextTypeTearOff();

mixin _$TextType {
  String get text;
  String get type;

  $TextTypeCopyWith<TextType> get copyWith;
}

abstract class $TextTypeCopyWith<$Res> {
  factory $TextTypeCopyWith(TextType value, $Res Function(TextType) then) =
      _$TextTypeCopyWithImpl<$Res>;
  $Res call({String text, String type});
}

class _$TextTypeCopyWithImpl<$Res> implements $TextTypeCopyWith<$Res> {
  _$TextTypeCopyWithImpl(this._value, this._then);

  final TextType _value;
  // ignore: unused_field
  final $Res Function(TextType) _then;

  @override
  $Res call({
    Object text = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class _$TextTypeCopyWith<$Res> implements $TextTypeCopyWith<$Res> {
  factory _$TextTypeCopyWith(_TextType value, $Res Function(_TextType) then) =
      __$TextTypeCopyWithImpl<$Res>;
  @override
  $Res call({String text, String type});
}

class __$TextTypeCopyWithImpl<$Res> extends _$TextTypeCopyWithImpl<$Res>
    implements _$TextTypeCopyWith<$Res> {
  __$TextTypeCopyWithImpl(_TextType _value, $Res Function(_TextType) _then)
      : super(_value, (v) => _then(v as _TextType));

  @override
  _TextType get _value => super._value as _TextType;

  @override
  $Res call({
    Object text = freezed,
    Object type = freezed,
  }) {
    return _then(_TextType(
      text: text == freezed ? _value.text : text as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

class _$_TextType implements _TextType {
  const _$_TextType({@required this.text, @required this.type})
      : assert(text != null),
        assert(type != null);

  @override
  final String text;
  @override
  final String type;

  @override
  String toString() {
    return 'TextType(text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextType &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$TextTypeCopyWith<_TextType> get copyWith =>
      __$TextTypeCopyWithImpl<_TextType>(this, _$identity);
}

abstract class _TextType implements TextType {
  const factory _TextType({@required String text, @required String type}) =
      _$_TextType;

  @override
  String get text;
  @override
  String get type;
  @override
  _$TextTypeCopyWith<_TextType> get copyWith;
}
