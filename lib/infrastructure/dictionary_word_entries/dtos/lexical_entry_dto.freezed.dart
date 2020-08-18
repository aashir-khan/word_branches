// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lexical_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LexicalEntryDto _$LexicalEntryDtoFromJson(Map<String, dynamic> json) {
  return _LexicalEntryDto.fromJson(json);
}

class _$LexicalEntryDtoTearOff {
  const _$LexicalEntryDtoTearOff();

// ignore: unused_element
  _LexicalEntryDto call(
      {@required List<EntryDto> entries,
      @required IdTextDto lexicalCategory,
      List<PronunciationDto> pronunciations}) {
    return _LexicalEntryDto(
      entries: entries,
      lexicalCategory: lexicalCategory,
      pronunciations: pronunciations,
    );
  }
}

// ignore: unused_element
const $LexicalEntryDto = _$LexicalEntryDtoTearOff();

mixin _$LexicalEntryDto {
  List<EntryDto> get entries;
  IdTextDto get lexicalCategory;
  List<PronunciationDto> get pronunciations;

  Map<String, dynamic> toJson();
  $LexicalEntryDtoCopyWith<LexicalEntryDto> get copyWith;
}

abstract class $LexicalEntryDtoCopyWith<$Res> {
  factory $LexicalEntryDtoCopyWith(
          LexicalEntryDto value, $Res Function(LexicalEntryDto) then) =
      _$LexicalEntryDtoCopyWithImpl<$Res>;
  $Res call(
      {List<EntryDto> entries,
      IdTextDto lexicalCategory,
      List<PronunciationDto> pronunciations});

  $IdTextDtoCopyWith<$Res> get lexicalCategory;
}

class _$LexicalEntryDtoCopyWithImpl<$Res>
    implements $LexicalEntryDtoCopyWith<$Res> {
  _$LexicalEntryDtoCopyWithImpl(this._value, this._then);

  final LexicalEntryDto _value;
  // ignore: unused_field
  final $Res Function(LexicalEntryDto) _then;

  @override
  $Res call({
    Object entries = freezed,
    Object lexicalCategory = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed ? _value.entries : entries as List<EntryDto>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as IdTextDto,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }

  @override
  $IdTextDtoCopyWith<$Res> get lexicalCategory {
    if (_value.lexicalCategory == null) {
      return null;
    }
    return $IdTextDtoCopyWith<$Res>(_value.lexicalCategory, (value) {
      return _then(_value.copyWith(lexicalCategory: value));
    });
  }
}

abstract class _$LexicalEntryDtoCopyWith<$Res>
    implements $LexicalEntryDtoCopyWith<$Res> {
  factory _$LexicalEntryDtoCopyWith(
          _LexicalEntryDto value, $Res Function(_LexicalEntryDto) then) =
      __$LexicalEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<EntryDto> entries,
      IdTextDto lexicalCategory,
      List<PronunciationDto> pronunciations});

  @override
  $IdTextDtoCopyWith<$Res> get lexicalCategory;
}

class __$LexicalEntryDtoCopyWithImpl<$Res>
    extends _$LexicalEntryDtoCopyWithImpl<$Res>
    implements _$LexicalEntryDtoCopyWith<$Res> {
  __$LexicalEntryDtoCopyWithImpl(
      _LexicalEntryDto _value, $Res Function(_LexicalEntryDto) _then)
      : super(_value, (v) => _then(v as _LexicalEntryDto));

  @override
  _LexicalEntryDto get _value => super._value as _LexicalEntryDto;

  @override
  $Res call({
    Object entries = freezed,
    Object lexicalCategory = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_LexicalEntryDto(
      entries: entries == freezed ? _value.entries : entries as List<EntryDto>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as IdTextDto,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as List<PronunciationDto>,
    ));
  }
}

@JsonSerializable()
class _$_LexicalEntryDto implements _LexicalEntryDto {
  const _$_LexicalEntryDto(
      {@required this.entries,
      @required this.lexicalCategory,
      this.pronunciations})
      : assert(entries != null),
        assert(lexicalCategory != null);

  factory _$_LexicalEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LexicalEntryDtoFromJson(json);

  @override
  final List<EntryDto> entries;
  @override
  final IdTextDto lexicalCategory;
  @override
  final List<PronunciationDto> pronunciations;

  @override
  String toString() {
    return 'LexicalEntryDto(entries: $entries, lexicalCategory: $lexicalCategory, pronunciations: $pronunciations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LexicalEntryDto &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality()
                    .equals(other.entries, entries)) &&
            (identical(other.lexicalCategory, lexicalCategory) ||
                const DeepCollectionEquality()
                    .equals(other.lexicalCategory, lexicalCategory)) &&
            (identical(other.pronunciations, pronunciations) ||
                const DeepCollectionEquality()
                    .equals(other.pronunciations, pronunciations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entries) ^
      const DeepCollectionEquality().hash(lexicalCategory) ^
      const DeepCollectionEquality().hash(pronunciations);

  @override
  _$LexicalEntryDtoCopyWith<_LexicalEntryDto> get copyWith =>
      __$LexicalEntryDtoCopyWithImpl<_LexicalEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LexicalEntryDtoToJson(this);
  }
}

abstract class _LexicalEntryDto implements LexicalEntryDto {
  const factory _LexicalEntryDto(
      {@required List<EntryDto> entries,
      @required IdTextDto lexicalCategory,
      List<PronunciationDto> pronunciations}) = _$_LexicalEntryDto;

  factory _LexicalEntryDto.fromJson(Map<String, dynamic> json) =
      _$_LexicalEntryDto.fromJson;

  @override
  List<EntryDto> get entries;
  @override
  IdTextDto get lexicalCategory;
  @override
  List<PronunciationDto> get pronunciations;
  @override
  _$LexicalEntryDtoCopyWith<_LexicalEntryDto> get copyWith;
}
