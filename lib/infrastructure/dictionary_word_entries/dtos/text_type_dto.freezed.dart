// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'text_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TextTypeDto _$TextTypeDtoFromJson(Map<String, dynamic> json) {
  return _TextTypeDto.fromJson(json);
}

class _$TextTypeDtoTearOff {
  const _$TextTypeDtoTearOff();

  _TextTypeDto call({String text, String type}) {
    return _TextTypeDto(
      text: text,
      type: type,
    );
  }
}

// ignore: unused_element
const $TextTypeDto = _$TextTypeDtoTearOff();

mixin _$TextTypeDto {
  String get text;
  String get type;

  Map<String, dynamic> toJson();
  $TextTypeDtoCopyWith<TextTypeDto> get copyWith;
}

abstract class $TextTypeDtoCopyWith<$Res> {
  factory $TextTypeDtoCopyWith(
          TextTypeDto value, $Res Function(TextTypeDto) then) =
      _$TextTypeDtoCopyWithImpl<$Res>;
  $Res call({String text, String type});
}

class _$TextTypeDtoCopyWithImpl<$Res> implements $TextTypeDtoCopyWith<$Res> {
  _$TextTypeDtoCopyWithImpl(this._value, this._then);

  final TextTypeDto _value;
  // ignore: unused_field
  final $Res Function(TextTypeDto) _then;

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

abstract class _$TextTypeDtoCopyWith<$Res>
    implements $TextTypeDtoCopyWith<$Res> {
  factory _$TextTypeDtoCopyWith(
          _TextTypeDto value, $Res Function(_TextTypeDto) then) =
      __$TextTypeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String text, String type});
}

class __$TextTypeDtoCopyWithImpl<$Res> extends _$TextTypeDtoCopyWithImpl<$Res>
    implements _$TextTypeDtoCopyWith<$Res> {
  __$TextTypeDtoCopyWithImpl(
      _TextTypeDto _value, $Res Function(_TextTypeDto) _then)
      : super(_value, (v) => _then(v as _TextTypeDto));

  @override
  _TextTypeDto get _value => super._value as _TextTypeDto;

  @override
  $Res call({
    Object text = freezed,
    Object type = freezed,
  }) {
    return _then(_TextTypeDto(
      text: text == freezed ? _value.text : text as String,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$_TextTypeDto implements _TextTypeDto {
  const _$_TextTypeDto({this.text, this.type});

  factory _$_TextTypeDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TextTypeDtoFromJson(json);

  @override
  final String text;
  @override
  final String type;

  @override
  String toString() {
    return 'TextTypeDto(text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextTypeDto &&
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
  _$TextTypeDtoCopyWith<_TextTypeDto> get copyWith =>
      __$TextTypeDtoCopyWithImpl<_TextTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextTypeDtoToJson(this);
  }
}

abstract class _TextTypeDto implements TextTypeDto {
  const factory _TextTypeDto({String text, String type}) = _$_TextTypeDto;

  factory _TextTypeDto.fromJson(Map<String, dynamic> json) =
      _$_TextTypeDto.fromJson;

  @override
  String get text;
  @override
  String get type;
  @override
  _$TextTypeDtoCopyWith<_TextTypeDto> get copyWith;
}
