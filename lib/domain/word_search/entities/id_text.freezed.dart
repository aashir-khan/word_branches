// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'id_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IdTextTearOff {
  const _$IdTextTearOff();

  _IdText call({required String id, required String text}) {
    return _IdText(
      id: id,
      text: text,
    );
  }
}

/// @nodoc
const $IdText = _$IdTextTearOff();

/// @nodoc
mixin _$IdText {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdTextCopyWith<IdText> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdTextCopyWith<$Res> {
  factory $IdTextCopyWith(IdText value, $Res Function(IdText) then) =
      _$IdTextCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

/// @nodoc
class _$IdTextCopyWithImpl<$Res> implements $IdTextCopyWith<$Res> {
  _$IdTextCopyWithImpl(this._value, this._then);

  final IdText _value;
  // ignore: unused_field
  final $Res Function(IdText) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IdTextCopyWith<$Res> implements $IdTextCopyWith<$Res> {
  factory _$IdTextCopyWith(_IdText value, $Res Function(_IdText) then) =
      __$IdTextCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

/// @nodoc
class __$IdTextCopyWithImpl<$Res> extends _$IdTextCopyWithImpl<$Res>
    implements _$IdTextCopyWith<$Res> {
  __$IdTextCopyWithImpl(_IdText _value, $Res Function(_IdText) _then)
      : super(_value, (v) => _then(v as _IdText));

  @override
  _IdText get _value => super._value as _IdText;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_IdText(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IdText extends _IdText with DiagnosticableTreeMixin {
  const _$_IdText({required this.id, required this.text}) : super._();

  @override
  final String id;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdText(id: $id, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdText'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdText &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$IdTextCopyWith<_IdText> get copyWith =>
      __$IdTextCopyWithImpl<_IdText>(this, _$identity);
}

abstract class _IdText extends IdText {
  const factory _IdText({required String id, required String text}) = _$_IdText;
  const _IdText._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdTextCopyWith<_IdText> get copyWith => throw _privateConstructorUsedError;
}
