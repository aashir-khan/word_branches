// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'id_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$IdTextTearOff {
  const _$IdTextTearOff();

  _IdText call({@required String id, @required String text}) {
    return _IdText(
      id: id,
      text: text,
    );
  }
}

// ignore: unused_element
const $IdText = _$IdTextTearOff();

mixin _$IdText {
  String get id;
  String get text;

  $IdTextCopyWith<IdText> get copyWith;
}

abstract class $IdTextCopyWith<$Res> {
  factory $IdTextCopyWith(IdText value, $Res Function(IdText) then) =
      _$IdTextCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

class _$IdTextCopyWithImpl<$Res> implements $IdTextCopyWith<$Res> {
  _$IdTextCopyWithImpl(this._value, this._then);

  final IdText _value;
  // ignore: unused_field
  final $Res Function(IdText) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

abstract class _$IdTextCopyWith<$Res> implements $IdTextCopyWith<$Res> {
  factory _$IdTextCopyWith(_IdText value, $Res Function(_IdText) then) =
      __$IdTextCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

class __$IdTextCopyWithImpl<$Res> extends _$IdTextCopyWithImpl<$Res>
    implements _$IdTextCopyWith<$Res> {
  __$IdTextCopyWithImpl(_IdText _value, $Res Function(_IdText) _then)
      : super(_value, (v) => _then(v as _IdText));

  @override
  _IdText get _value => super._value as _IdText;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_IdText(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

class _$_IdText with DiagnosticableTreeMixin implements _IdText {
  const _$_IdText({@required this.id, @required this.text})
      : assert(id != null),
        assert(text != null);

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

  @override
  _$IdTextCopyWith<_IdText> get copyWith =>
      __$IdTextCopyWithImpl<_IdText>(this, _$identity);
}

abstract class _IdText implements IdText {
  const factory _IdText({@required String id, @required String text}) =
      _$_IdText;

  @override
  String get id;
  @override
  String get text;
  @override
  _$IdTextCopyWith<_IdText> get copyWith;
}
