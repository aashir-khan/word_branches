// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word_search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordSearchDto _$WordSearchDtoFromJson(Map<String, dynamic> json) {
  return _WordSearchDto.fromJson(json);
}

/// @nodoc
class _$WordSearchDtoTearOff {
  const _$WordSearchDtoTearOff();

  _WordSearchDto call(
      {required DictionaryWordDto word,
      required List<HeadwordEntryDto> results,
      bool isFavorited = false,
      String? lastSearchedAt}) {
    return _WordSearchDto(
      word: word,
      results: results,
      isFavorited: isFavorited,
      lastSearchedAt: lastSearchedAt,
    );
  }

  WordSearchDto fromJson(Map<String, Object> json) {
    return WordSearchDto.fromJson(json);
  }
}

/// @nodoc
const $WordSearchDto = _$WordSearchDtoTearOff();

/// @nodoc
mixin _$WordSearchDto {
  DictionaryWordDto get word => throw _privateConstructorUsedError;
  List<HeadwordEntryDto> get results => throw _privateConstructorUsedError;
  bool get isFavorited => throw _privateConstructorUsedError;
  String? get lastSearchedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordSearchDtoCopyWith<WordSearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordSearchDtoCopyWith<$Res> {
  factory $WordSearchDtoCopyWith(
          WordSearchDto value, $Res Function(WordSearchDto) then) =
      _$WordSearchDtoCopyWithImpl<$Res>;
  $Res call(
      {DictionaryWordDto word,
      List<HeadwordEntryDto> results,
      bool isFavorited,
      String? lastSearchedAt});

  $DictionaryWordDtoCopyWith<$Res> get word;
}

/// @nodoc
class _$WordSearchDtoCopyWithImpl<$Res>
    implements $WordSearchDtoCopyWith<$Res> {
  _$WordSearchDtoCopyWithImpl(this._value, this._then);

  final WordSearchDto _value;
  // ignore: unused_field
  final $Res Function(WordSearchDto) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? results = freezed,
    Object? isFavorited = freezed,
    Object? lastSearchedAt = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as DictionaryWordDto,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<HeadwordEntryDto>,
      isFavorited: isFavorited == freezed
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DictionaryWordDtoCopyWith<$Res> get word {
    return $DictionaryWordDtoCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc
abstract class _$WordSearchDtoCopyWith<$Res>
    implements $WordSearchDtoCopyWith<$Res> {
  factory _$WordSearchDtoCopyWith(
          _WordSearchDto value, $Res Function(_WordSearchDto) then) =
      __$WordSearchDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DictionaryWordDto word,
      List<HeadwordEntryDto> results,
      bool isFavorited,
      String? lastSearchedAt});

  @override
  $DictionaryWordDtoCopyWith<$Res> get word;
}

/// @nodoc
class __$WordSearchDtoCopyWithImpl<$Res>
    extends _$WordSearchDtoCopyWithImpl<$Res>
    implements _$WordSearchDtoCopyWith<$Res> {
  __$WordSearchDtoCopyWithImpl(
      _WordSearchDto _value, $Res Function(_WordSearchDto) _then)
      : super(_value, (v) => _then(v as _WordSearchDto));

  @override
  _WordSearchDto get _value => super._value as _WordSearchDto;

  @override
  $Res call({
    Object? word = freezed,
    Object? results = freezed,
    Object? isFavorited = freezed,
    Object? lastSearchedAt = freezed,
  }) {
    return _then(_WordSearchDto(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as DictionaryWordDto,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<HeadwordEntryDto>,
      isFavorited: isFavorited == freezed
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordSearchDto implements _WordSearchDto {
  const _$_WordSearchDto(
      {required this.word,
      required this.results,
      this.isFavorited = false,
      this.lastSearchedAt});

  factory _$_WordSearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WordSearchDtoFromJson(json);

  @override
  final DictionaryWordDto word;
  @override
  final List<HeadwordEntryDto> results;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavorited;
  @override
  final String? lastSearchedAt;

  @override
  String toString() {
    return 'WordSearchDto(word: $word, results: $results, isFavorited: $isFavorited, lastSearchedAt: $lastSearchedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordSearchDto &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.isFavorited, isFavorited) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorited, isFavorited)) &&
            (identical(other.lastSearchedAt, lastSearchedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSearchedAt, lastSearchedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(word) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(isFavorited) ^
      const DeepCollectionEquality().hash(lastSearchedAt);

  @JsonKey(ignore: true)
  @override
  _$WordSearchDtoCopyWith<_WordSearchDto> get copyWith =>
      __$WordSearchDtoCopyWithImpl<_WordSearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WordSearchDtoToJson(this);
  }
}

abstract class _WordSearchDto implements WordSearchDto {
  const factory _WordSearchDto(
      {required DictionaryWordDto word,
      required List<HeadwordEntryDto> results,
      bool isFavorited,
      String? lastSearchedAt}) = _$_WordSearchDto;

  factory _WordSearchDto.fromJson(Map<String, dynamic> json) =
      _$_WordSearchDto.fromJson;

  @override
  DictionaryWordDto get word => throw _privateConstructorUsedError;
  @override
  List<HeadwordEntryDto> get results => throw _privateConstructorUsedError;
  @override
  bool get isFavorited => throw _privateConstructorUsedError;
  @override
  String? get lastSearchedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordSearchDtoCopyWith<_WordSearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}
