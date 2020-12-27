// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EntryDto _$EntryDtoFromJson(Map<String, dynamic> json) {
  return _EntryDto.fromJson(json);
}

/// @nodoc
class _$EntryDtoTearOff {
  const _$EntryDtoTearOff();

// ignore: unused_element
  _EntryDto call(
      {List<String> etymologies,
      @required List<SenseDto> senses,
      List<PronunciationDto> pronunciations}) {
    return _EntryDto(
      etymologies: etymologies,
      senses: senses,
      pronunciations: pronunciations,
    );
  }

// ignore: unused_element
  EntryDto fromJson(Map<String, Object> json) {
    return EntryDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EntryDto = _$EntryDtoTearOff();

/// @nodoc
mixin _$EntryDto {
  List<String> get etymologies;
  List<SenseDto> get senses;
  List<PronunciationDto> get pronunciations;

  Map<String, dynamic> toJson();
  $EntryDtoCopyWith<EntryDto> get copyWith;
}

/// @nodoc
abstract class $EntryDtoCopyWith<$Res> {
  factory $EntryDtoCopyWith(EntryDto value, $Res Function(EntryDto) then) =
      _$EntryDtoCopyWithImpl<$Res>;
  $Res call(
      {List<String> etymologies,
      List<SenseDto> senses,
      List<PronunciationDto> pronunciations});
}

/// @nodoc
class _$EntryDtoCopyWithImpl<$Res> implements $EntryDtoCopyWith<$Res> {
  _$EntryDtoCopyWithImpl(this._value, this._then);

  final EntryDto _value;
  // ignore: unused_field
  final $Res Function(EntryDto) _then;

  @override
  $Res call({
    Object etymologies = freezed,
    Object senses = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_value.copyWith(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as List<String>,
      senses: senses == freezed ? _value.senses : senses as List<SenseDto>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }
}

/// @nodoc
abstract class _$EntryDtoCopyWith<$Res> implements $EntryDtoCopyWith<$Res> {
  factory _$EntryDtoCopyWith(_EntryDto value, $Res Function(_EntryDto) then) =
      __$EntryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> etymologies,
      List<SenseDto> senses,
      List<PronunciationDto> pronunciations});
}

/// @nodoc
class __$EntryDtoCopyWithImpl<$Res> extends _$EntryDtoCopyWithImpl<$Res>
    implements _$EntryDtoCopyWith<$Res> {
  __$EntryDtoCopyWithImpl(_EntryDto _value, $Res Function(_EntryDto) _then)
      : super(_value, (v) => _then(v as _EntryDto));

  @override
  _EntryDto get _value => super._value as _EntryDto;

  @override
  $Res call({
    Object etymologies = freezed,
    Object senses = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_EntryDto(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as List<String>,
      senses: senses == freezed ? _value.senses : senses as List<SenseDto>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EntryDto implements _EntryDto {
  const _$_EntryDto(
      {this.etymologies, @required this.senses, this.pronunciations})
      : assert(senses != null);

  factory _$_EntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_EntryDtoFromJson(json);

  @override
  final List<String> etymologies;
  @override
  final List<SenseDto> senses;
  @override
  final List<PronunciationDto> pronunciations;

  @override
  String toString() {
    return 'EntryDto(etymologies: $etymologies, senses: $senses, pronunciations: $pronunciations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntryDto &&
            (identical(other.etymologies, etymologies) ||
                const DeepCollectionEquality()
                    .equals(other.etymologies, etymologies)) &&
            (identical(other.senses, senses) ||
                const DeepCollectionEquality().equals(other.senses, senses)) &&
            (identical(other.pronunciations, pronunciations) ||
                const DeepCollectionEquality()
                    .equals(other.pronunciations, pronunciations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(etymologies) ^
      const DeepCollectionEquality().hash(senses) ^
      const DeepCollectionEquality().hash(pronunciations);

  @override
  _$EntryDtoCopyWith<_EntryDto> get copyWith =>
      __$EntryDtoCopyWithImpl<_EntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EntryDtoToJson(this);
  }
}

abstract class _EntryDto implements EntryDto {
  const factory _EntryDto(
      {List<String> etymologies,
      @required List<SenseDto> senses,
      List<PronunciationDto> pronunciations}) = _$_EntryDto;

  factory _EntryDto.fromJson(Map<String, dynamic> json) = _$_EntryDto.fromJson;

  @override
  List<String> get etymologies;
  @override
  List<SenseDto> get senses;
  @override
  List<PronunciationDto> get pronunciations;
  @override
  _$EntryDtoCopyWith<_EntryDto> get copyWith;
}
