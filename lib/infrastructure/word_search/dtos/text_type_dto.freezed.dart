// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextTypeDto _$TextTypeDtoFromJson(Map<String, dynamic> json) {
  return _TextTypeDto.fromJson(json);
}

/// @nodoc
class _$TextTypeDtoTearOff {
  const _$TextTypeDtoTearOff();

  _TextTypeDto call({required String text, required String type}) {
    return _TextTypeDto(
      text: text,
      type: type,
    );
  }

  TextTypeDto fromJson(Map<String, Object> json) {
    return TextTypeDto.fromJson(json);
  }
}

/// @nodoc
const $TextTypeDto = _$TextTypeDtoTearOff();

/// @nodoc
mixin _$TextTypeDto {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextTypeDtoCopyWith<TextTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextTypeDtoCopyWith<$Res> {
  factory $TextTypeDtoCopyWith(
          TextTypeDto value, $Res Function(TextTypeDto) then) =
      _$TextTypeDtoCopyWithImpl<$Res>;
  $Res call({String text, String type});
}

/// @nodoc
class _$TextTypeDtoCopyWithImpl<$Res> implements $TextTypeDtoCopyWith<$Res> {
  _$TextTypeDtoCopyWithImpl(this._value, this._then);

  final TextTypeDto _value;
  // ignore: unused_field
  final $Res Function(TextTypeDto) _then;

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
abstract class _$TextTypeDtoCopyWith<$Res>
    implements $TextTypeDtoCopyWith<$Res> {
  factory _$TextTypeDtoCopyWith(
          _TextTypeDto value, $Res Function(_TextTypeDto) then) =
      __$TextTypeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String text, String type});
}

/// @nodoc
class __$TextTypeDtoCopyWithImpl<$Res> extends _$TextTypeDtoCopyWithImpl<$Res>
    implements _$TextTypeDtoCopyWith<$Res> {
  __$TextTypeDtoCopyWithImpl(
      _TextTypeDto _value, $Res Function(_TextTypeDto) _then)
      : super(_value, (v) => _then(v as _TextTypeDto));

  @override
  _TextTypeDto get _value => super._value as _TextTypeDto;

  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_TextTypeDto(
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
@JsonSerializable()
class _$_TextTypeDto implements _TextTypeDto {
  const _$_TextTypeDto({required this.text, required this.type});

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

  @JsonKey(ignore: true)
  @override
  _$TextTypeDtoCopyWith<_TextTypeDto> get copyWith =>
      __$TextTypeDtoCopyWithImpl<_TextTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextTypeDtoToJson(this);
  }
}

abstract class _TextTypeDto implements TextTypeDto {
  const factory _TextTypeDto({required String text, required String type}) =
      _$_TextTypeDto;

  factory _TextTypeDto.fromJson(Map<String, dynamic> json) =
      _$_TextTypeDto.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextTypeDtoCopyWith<_TextTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
