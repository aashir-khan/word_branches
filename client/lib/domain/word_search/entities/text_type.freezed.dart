// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TextTypeTearOff {
  const _$TextTypeTearOff();

  _TextType call({required String text, required String type}) {
    return _TextType(
      text: text,
      type: type,
    );
  }
}

/// @nodoc
const $TextType = _$TextTypeTearOff();

/// @nodoc
mixin _$TextType {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextTypeCopyWith<TextType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextTypeCopyWith<$Res> {
  factory $TextTypeCopyWith(TextType value, $Res Function(TextType) then) =
      _$TextTypeCopyWithImpl<$Res>;
  $Res call({String text, String type});
}

/// @nodoc
class _$TextTypeCopyWithImpl<$Res> implements $TextTypeCopyWith<$Res> {
  _$TextTypeCopyWithImpl(this._value, this._then);

  final TextType _value;
  // ignore: unused_field
  final $Res Function(TextType) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TextTypeCopyWith<$Res> implements $TextTypeCopyWith<$Res> {
  factory _$TextTypeCopyWith(_TextType value, $Res Function(_TextType) then) =
      __$TextTypeCopyWithImpl<$Res>;
  @override
  $Res call({String text, String type});
}

/// @nodoc
class __$TextTypeCopyWithImpl<$Res> extends _$TextTypeCopyWithImpl<$Res>
    implements _$TextTypeCopyWith<$Res> {
  __$TextTypeCopyWithImpl(_TextType _value, $Res Function(_TextType) _then)
      : super(_value, (v) => _then(v as _TextType));

  @override
  _TextType get _value => super._value as _TextType;

  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_TextType(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextType implements _TextType {
  const _$_TextType({required this.text, required this.type});

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

  @JsonKey(ignore: true)
  @override
  _$TextTypeCopyWith<_TextType> get copyWith =>
      __$TextTypeCopyWithImpl<_TextType>(this, _$identity);
}

abstract class _TextType implements TextType {
  const factory _TextType({required String text, required String type}) =
      _$_TextType;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextTypeCopyWith<_TextType> get copyWith =>
      throw _privateConstructorUsedError;
}