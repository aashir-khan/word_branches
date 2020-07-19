// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'id_text_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IdTextDto _$IdTextDtoFromJson(Map<String, dynamic> json) {
  return _IdTextDto.fromJson(json);
}

class _$IdTextDtoTearOff {
  const _$IdTextDtoTearOff();

  _IdTextDto call({@required String id, @required String text}) {
    return _IdTextDto(
      id: id,
      text: text,
    );
  }
}

// ignore: unused_element
const $IdTextDto = _$IdTextDtoTearOff();

mixin _$IdTextDto {
  String get id;
  String get text;

  Map<String, dynamic> toJson();
  $IdTextDtoCopyWith<IdTextDto> get copyWith;
}

abstract class $IdTextDtoCopyWith<$Res> {
  factory $IdTextDtoCopyWith(IdTextDto value, $Res Function(IdTextDto) then) =
      _$IdTextDtoCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

class _$IdTextDtoCopyWithImpl<$Res> implements $IdTextDtoCopyWith<$Res> {
  _$IdTextDtoCopyWithImpl(this._value, this._then);

  final IdTextDto _value;
  // ignore: unused_field
  final $Res Function(IdTextDto) _then;

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

abstract class _$IdTextDtoCopyWith<$Res> implements $IdTextDtoCopyWith<$Res> {
  factory _$IdTextDtoCopyWith(
          _IdTextDto value, $Res Function(_IdTextDto) then) =
      __$IdTextDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

class __$IdTextDtoCopyWithImpl<$Res> extends _$IdTextDtoCopyWithImpl<$Res>
    implements _$IdTextDtoCopyWith<$Res> {
  __$IdTextDtoCopyWithImpl(_IdTextDto _value, $Res Function(_IdTextDto) _then)
      : super(_value, (v) => _then(v as _IdTextDto));

  @override
  _IdTextDto get _value => super._value as _IdTextDto;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_IdTextDto(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()
class _$_IdTextDto with DiagnosticableTreeMixin implements _IdTextDto {
  const _$_IdTextDto({@required this.id, @required this.text})
      : assert(id != null),
        assert(text != null);

  factory _$_IdTextDto.fromJson(Map<String, dynamic> json) =>
      _$_$_IdTextDtoFromJson(json);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdTextDto(id: $id, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdTextDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdTextDto &&
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
  _$IdTextDtoCopyWith<_IdTextDto> get copyWith =>
      __$IdTextDtoCopyWithImpl<_IdTextDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdTextDtoToJson(this);
  }
}

abstract class _IdTextDto implements IdTextDto {
  const factory _IdTextDto({@required String id, @required String text}) =
      _$_IdTextDto;

  factory _IdTextDto.fromJson(Map<String, dynamic> json) =
      _$_IdTextDto.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  _$IdTextDtoCopyWith<_IdTextDto> get copyWith;
}
