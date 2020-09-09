// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'headword_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HeadwordEntryDto _$HeadwordEntryDtoFromJson(Map<String, dynamic> json) {
  return _HeadwordEntryDto.fromJson(json);
}

class _$HeadwordEntryDtoTearOff {
  const _$HeadwordEntryDtoTearOff();

// ignore: unused_element
  _HeadwordEntryDto call(
      {@required String id,
      @required List<LexicalEntryDto> lexicalEntries,
      List<PronunciationDto> pronunciations}) {
    return _HeadwordEntryDto(
      id: id,
      lexicalEntries: lexicalEntries,
      pronunciations: pronunciations,
    );
  }
}

// ignore: unused_element
const $HeadwordEntryDto = _$HeadwordEntryDtoTearOff();

mixin _$HeadwordEntryDto {
  String get id;
  List<LexicalEntryDto> get lexicalEntries;
  List<PronunciationDto> get pronunciations;

  Map<String, dynamic> toJson();
  $HeadwordEntryDtoCopyWith<HeadwordEntryDto> get copyWith;
}

abstract class $HeadwordEntryDtoCopyWith<$Res> {
  factory $HeadwordEntryDtoCopyWith(
          HeadwordEntryDto value, $Res Function(HeadwordEntryDto) then) =
      _$HeadwordEntryDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<LexicalEntryDto> lexicalEntries,
      List<PronunciationDto> pronunciations});
}

class _$HeadwordEntryDtoCopyWithImpl<$Res>
    implements $HeadwordEntryDtoCopyWith<$Res> {
  _$HeadwordEntryDtoCopyWithImpl(this._value, this._then);

  final HeadwordEntryDto _value;
  // ignore: unused_field
  final $Res Function(HeadwordEntryDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object lexicalEntries = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      lexicalEntries: lexicalEntries == freezed
          ? _value.lexicalEntries
          : lexicalEntries as List<LexicalEntryDto>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }
}

abstract class _$HeadwordEntryDtoCopyWith<$Res>
    implements $HeadwordEntryDtoCopyWith<$Res> {
  factory _$HeadwordEntryDtoCopyWith(
          _HeadwordEntryDto value, $Res Function(_HeadwordEntryDto) then) =
      __$HeadwordEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<LexicalEntryDto> lexicalEntries,
      List<PronunciationDto> pronunciations});
}

class __$HeadwordEntryDtoCopyWithImpl<$Res>
    extends _$HeadwordEntryDtoCopyWithImpl<$Res>
    implements _$HeadwordEntryDtoCopyWith<$Res> {
  __$HeadwordEntryDtoCopyWithImpl(
      _HeadwordEntryDto _value, $Res Function(_HeadwordEntryDto) _then)
      : super(_value, (v) => _then(v as _HeadwordEntryDto));

  @override
  _HeadwordEntryDto get _value => super._value as _HeadwordEntryDto;

  @override
  $Res call({
    Object id = freezed,
    Object lexicalEntries = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_HeadwordEntryDto(
      id: id == freezed ? _value.id : id as String,
      lexicalEntries: lexicalEntries == freezed
          ? _value.lexicalEntries
          : lexicalEntries as List<LexicalEntryDto>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }
}

@JsonSerializable()
class _$_HeadwordEntryDto implements _HeadwordEntryDto {
  _$_HeadwordEntryDto(
      {@required this.id, @required this.lexicalEntries, this.pronunciations})
      : assert(id != null),
        assert(lexicalEntries != null);

  factory _$_HeadwordEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HeadwordEntryDtoFromJson(json);

  @override
  final String id;
  @override
  final List<LexicalEntryDto> lexicalEntries;
  @override
  final List<PronunciationDto> pronunciations;

  @override
  String toString() {
    return 'HeadwordEntryDto(id: $id, lexicalEntries: $lexicalEntries, pronunciations: $pronunciations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeadwordEntryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lexicalEntries, lexicalEntries) ||
                const DeepCollectionEquality()
                    .equals(other.lexicalEntries, lexicalEntries)) &&
            (identical(other.pronunciations, pronunciations) ||
                const DeepCollectionEquality()
                    .equals(other.pronunciations, pronunciations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lexicalEntries) ^
      const DeepCollectionEquality().hash(pronunciations);

  @override
  _$HeadwordEntryDtoCopyWith<_HeadwordEntryDto> get copyWith =>
      __$HeadwordEntryDtoCopyWithImpl<_HeadwordEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeadwordEntryDtoToJson(this);
  }
}

abstract class _HeadwordEntryDto implements HeadwordEntryDto {
  factory _HeadwordEntryDto(
      {@required String id,
      @required List<LexicalEntryDto> lexicalEntries,
      List<PronunciationDto> pronunciations}) = _$_HeadwordEntryDto;

  factory _HeadwordEntryDto.fromJson(Map<String, dynamic> json) =
      _$_HeadwordEntryDto.fromJson;

  @override
  String get id;
  @override
  List<LexicalEntryDto> get lexicalEntries;
  @override
  List<PronunciationDto> get pronunciations;
  @override
  _$HeadwordEntryDtoCopyWith<_HeadwordEntryDto> get copyWith;
}
