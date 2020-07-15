// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

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

  _LexicalEntryDto call(
      {@required List<EntryDto> entries, @required String lexicalCategory}) {
    return _LexicalEntryDto(
      entries: entries,
      lexicalCategory: lexicalCategory,
    );
  }
}

// ignore: unused_element
const $LexicalEntryDto = _$LexicalEntryDtoTearOff();

mixin _$LexicalEntryDto {
  List<EntryDto> get entries;
  String get lexicalCategory;

  Map<String, dynamic> toJson();
  $LexicalEntryDtoCopyWith<LexicalEntryDto> get copyWith;
}

abstract class $LexicalEntryDtoCopyWith<$Res> {
  factory $LexicalEntryDtoCopyWith(
          LexicalEntryDto value, $Res Function(LexicalEntryDto) then) =
      _$LexicalEntryDtoCopyWithImpl<$Res>;
  $Res call({List<EntryDto> entries, String lexicalCategory});
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
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed ? _value.entries : entries as List<EntryDto>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as String,
    ));
  }
}

abstract class _$LexicalEntryDtoCopyWith<$Res>
    implements $LexicalEntryDtoCopyWith<$Res> {
  factory _$LexicalEntryDtoCopyWith(
          _LexicalEntryDto value, $Res Function(_LexicalEntryDto) then) =
      __$LexicalEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<EntryDto> entries, String lexicalCategory});
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
  }) {
    return _then(_LexicalEntryDto(
      entries: entries == freezed ? _value.entries : entries as List<EntryDto>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as String,
    ));
  }
}

@JsonSerializable()
class _$_LexicalEntryDto implements _LexicalEntryDto {
  const _$_LexicalEntryDto(
      {@required this.entries, @required this.lexicalCategory})
      : assert(entries != null),
        assert(lexicalCategory != null);

  factory _$_LexicalEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_LexicalEntryDtoFromJson(json);

  @override
  final List<EntryDto> entries;
  @override
  final String lexicalCategory;

  @override
  String toString() {
    return 'LexicalEntryDto(entries: $entries, lexicalCategory: $lexicalCategory)';
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
                    .equals(other.lexicalCategory, lexicalCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entries) ^
      const DeepCollectionEquality().hash(lexicalCategory);

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
      @required String lexicalCategory}) = _$_LexicalEntryDto;

  factory _LexicalEntryDto.fromJson(Map<String, dynamic> json) =
      _$_LexicalEntryDto.fromJson;

  @override
  List<EntryDto> get entries;
  @override
  String get lexicalCategory;
  @override
  _$LexicalEntryDtoCopyWith<_LexicalEntryDto> get copyWith;
}
