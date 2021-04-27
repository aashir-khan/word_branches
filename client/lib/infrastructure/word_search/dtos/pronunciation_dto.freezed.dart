// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pronunciation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PronunciationDto _$PronunciationDtoFromJson(Map<String, dynamic> json) {
  return _PronunciationDto.fromJson(json);
}

/// @nodoc
class _$PronunciationDtoTearOff {
  const _$PronunciationDtoTearOff();

  _PronunciationDto call({String? audioFile}) {
    return _PronunciationDto(
      audioFile: audioFile,
    );
  }

  PronunciationDto fromJson(Map<String, Object> json) {
    return PronunciationDto.fromJson(json);
  }
}

/// @nodoc
const $PronunciationDto = _$PronunciationDtoTearOff();

/// @nodoc
mixin _$PronunciationDto {
  String? get audioFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PronunciationDtoCopyWith<PronunciationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PronunciationDtoCopyWith<$Res> {
  factory $PronunciationDtoCopyWith(
          PronunciationDto value, $Res Function(PronunciationDto) then) =
      _$PronunciationDtoCopyWithImpl<$Res>;
  $Res call({String? audioFile});
}

/// @nodoc
class _$PronunciationDtoCopyWithImpl<$Res>
    implements $PronunciationDtoCopyWith<$Res> {
  _$PronunciationDtoCopyWithImpl(this._value, this._then);

  final PronunciationDto _value;
  // ignore: unused_field
  final $Res Function(PronunciationDto) _then;

  @override
  $Res call({
    Object? audioFile = freezed,
  }) {
    return _then(_value.copyWith(
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PronunciationDtoCopyWith<$Res>
    implements $PronunciationDtoCopyWith<$Res> {
  factory _$PronunciationDtoCopyWith(
          _PronunciationDto value, $Res Function(_PronunciationDto) then) =
      __$PronunciationDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? audioFile});
}

/// @nodoc
class __$PronunciationDtoCopyWithImpl<$Res>
    extends _$PronunciationDtoCopyWithImpl<$Res>
    implements _$PronunciationDtoCopyWith<$Res> {
  __$PronunciationDtoCopyWithImpl(
      _PronunciationDto _value, $Res Function(_PronunciationDto) _then)
      : super(_value, (v) => _then(v as _PronunciationDto));

  @override
  _PronunciationDto get _value => super._value as _PronunciationDto;

  @override
  $Res call({
    Object? audioFile = freezed,
  }) {
    return _then(_PronunciationDto(
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PronunciationDto implements _PronunciationDto {
  const _$_PronunciationDto({this.audioFile});

  factory _$_PronunciationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PronunciationDtoFromJson(json);

  @override
  final String? audioFile;

  @override
  String toString() {
    return 'PronunciationDto(audioFile: $audioFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PronunciationDto &&
            (identical(other.audioFile, audioFile) ||
                const DeepCollectionEquality()
                    .equals(other.audioFile, audioFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(audioFile);

  @JsonKey(ignore: true)
  @override
  _$PronunciationDtoCopyWith<_PronunciationDto> get copyWith =>
      __$PronunciationDtoCopyWithImpl<_PronunciationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PronunciationDtoToJson(this);
  }
}

abstract class _PronunciationDto implements PronunciationDto {
  const factory _PronunciationDto({String? audioFile}) = _$_PronunciationDto;

  factory _PronunciationDto.fromJson(Map<String, dynamic> json) =
      _$_PronunciationDto.fromJson;

  @override
  String? get audioFile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PronunciationDtoCopyWith<_PronunciationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
