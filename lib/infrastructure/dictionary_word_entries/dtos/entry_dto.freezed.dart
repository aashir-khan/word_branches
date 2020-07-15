// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EntryDto _$EntryDtoFromJson(Map<String, dynamic> json) {
  return _EntryDto.fromJson(json);
}

class _$EntryDtoTearOff {
  const _$EntryDtoTearOff();

  _EntryDto call({List<String> etymologies, @required List<SenseDto> senses}) {
    return _EntryDto(
      etymologies: etymologies,
      senses: senses,
    );
  }
}

// ignore: unused_element
const $EntryDto = _$EntryDtoTearOff();

mixin _$EntryDto {
  List<String> get etymologies;
  List<SenseDto> get senses;

  Map<String, dynamic> toJson();
  $EntryDtoCopyWith<EntryDto> get copyWith;
}

abstract class $EntryDtoCopyWith<$Res> {
  factory $EntryDtoCopyWith(EntryDto value, $Res Function(EntryDto) then) =
      _$EntryDtoCopyWithImpl<$Res>;
  $Res call({List<String> etymologies, List<SenseDto> senses});
}

class _$EntryDtoCopyWithImpl<$Res> implements $EntryDtoCopyWith<$Res> {
  _$EntryDtoCopyWithImpl(this._value, this._then);

  final EntryDto _value;
  // ignore: unused_field
  final $Res Function(EntryDto) _then;

  @override
  $Res call({
    Object etymologies = freezed,
    Object senses = freezed,
  }) {
    return _then(_value.copyWith(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as List<String>,
      senses: senses == freezed ? _value.senses : senses as List<SenseDto>,
    ));
  }
}

abstract class _$EntryDtoCopyWith<$Res> implements $EntryDtoCopyWith<$Res> {
  factory _$EntryDtoCopyWith(_EntryDto value, $Res Function(_EntryDto) then) =
      __$EntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<String> etymologies, List<SenseDto> senses});
}

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
  }) {
    return _then(_EntryDto(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as List<String>,
      senses: senses == freezed ? _value.senses : senses as List<SenseDto>,
    ));
  }
}

@JsonSerializable()
class _$_EntryDto implements _EntryDto {
  const _$_EntryDto({this.etymologies, @required this.senses})
      : assert(senses != null);

  factory _$_EntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_EntryDtoFromJson(json);

  @override
  final List<String> etymologies;
  @override
  final List<SenseDto> senses;

  @override
  String toString() {
    return 'EntryDto(etymologies: $etymologies, senses: $senses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntryDto &&
            (identical(other.etymologies, etymologies) ||
                const DeepCollectionEquality()
                    .equals(other.etymologies, etymologies)) &&
            (identical(other.senses, senses) ||
                const DeepCollectionEquality().equals(other.senses, senses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(etymologies) ^
      const DeepCollectionEquality().hash(senses);

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
      @required List<SenseDto> senses}) = _$_EntryDto;

  factory _EntryDto.fromJson(Map<String, dynamic> json) = _$_EntryDto.fromJson;

  @override
  List<String> get etymologies;
  @override
  List<SenseDto> get senses;
  @override
  _$EntryDtoCopyWith<_EntryDto> get copyWith;
}
