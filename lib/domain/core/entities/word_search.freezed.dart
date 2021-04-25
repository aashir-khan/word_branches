// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'word_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WordSearchTearOff {
  const _$WordSearchTearOff();

// ignore: unused_element
  _WordSearch call(
      {@required DictionaryWord word,
      KtList<HeadwordEntry> results,
      @nullable bool isFavorited = false,
      DateTime lastSearchedAt}) {
    return _WordSearch(
      word: word,
      results: results,
      isFavorited: isFavorited,
      lastSearchedAt: lastSearchedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WordSearch = _$WordSearchTearOff();

/// @nodoc
mixin _$WordSearch {
  DictionaryWord get word;
  KtList<HeadwordEntry> get results;
  @nullable
  bool get isFavorited;
  DateTime get lastSearchedAt;

  @JsonKey(ignore: true)
  $WordSearchCopyWith<WordSearch> get copyWith;
}

/// @nodoc
abstract class $WordSearchCopyWith<$Res> {
  factory $WordSearchCopyWith(
          WordSearch value, $Res Function(WordSearch) then) =
      _$WordSearchCopyWithImpl<$Res>;
  $Res call(
      {DictionaryWord word,
      KtList<HeadwordEntry> results,
      @nullable bool isFavorited,
      DateTime lastSearchedAt});

  $DictionaryWordCopyWith<$Res> get word;
}

/// @nodoc
class _$WordSearchCopyWithImpl<$Res> implements $WordSearchCopyWith<$Res> {
  _$WordSearchCopyWithImpl(this._value, this._then);

  final WordSearch _value;
  // ignore: unused_field
  final $Res Function(WordSearch) _then;

  @override
  $Res call({
    Object word = freezed,
    Object results = freezed,
    Object isFavorited = freezed,
    Object lastSearchedAt = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed ? _value.word : word as DictionaryWord,
      results: results == freezed
          ? _value.results
          : results as KtList<HeadwordEntry>,
      isFavorited:
          isFavorited == freezed ? _value.isFavorited : isFavorited as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt as DateTime,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get word {
    if (_value.word == null) {
      return null;
    }
    return $DictionaryWordCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value));
    });
  }
}

/// @nodoc
abstract class _$WordSearchCopyWith<$Res> implements $WordSearchCopyWith<$Res> {
  factory _$WordSearchCopyWith(
          _WordSearch value, $Res Function(_WordSearch) then) =
      __$WordSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {DictionaryWord word,
      KtList<HeadwordEntry> results,
      @nullable bool isFavorited,
      DateTime lastSearchedAt});

  @override
  $DictionaryWordCopyWith<$Res> get word;
}

/// @nodoc
class __$WordSearchCopyWithImpl<$Res> extends _$WordSearchCopyWithImpl<$Res>
    implements _$WordSearchCopyWith<$Res> {
  __$WordSearchCopyWithImpl(
      _WordSearch _value, $Res Function(_WordSearch) _then)
      : super(_value, (v) => _then(v as _WordSearch));

  @override
  _WordSearch get _value => super._value as _WordSearch;

  @override
  $Res call({
    Object word = freezed,
    Object results = freezed,
    Object isFavorited = freezed,
    Object lastSearchedAt = freezed,
  }) {
    return _then(_WordSearch(
      word: word == freezed ? _value.word : word as DictionaryWord,
      results: results == freezed
          ? _value.results
          : results as KtList<HeadwordEntry>,
      isFavorited:
          isFavorited == freezed ? _value.isFavorited : isFavorited as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_WordSearch implements _WordSearch {
  const _$_WordSearch(
      {@required this.word,
      this.results,
      @nullable this.isFavorited = false,
      this.lastSearchedAt})
      : assert(word != null);

  @override
  final DictionaryWord word;
  @override
  final KtList<HeadwordEntry> results;
  @JsonKey(defaultValue: false)
  @override
  @nullable
  final bool isFavorited;
  @override
  final DateTime lastSearchedAt;

  @override
  String toString() {
    return 'WordSearch(word: $word, results: $results, isFavorited: $isFavorited, lastSearchedAt: $lastSearchedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordSearch &&
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
  _$WordSearchCopyWith<_WordSearch> get copyWith =>
      __$WordSearchCopyWithImpl<_WordSearch>(this, _$identity);
}

abstract class _WordSearch implements WordSearch {
  const factory _WordSearch(
      {@required DictionaryWord word,
      KtList<HeadwordEntry> results,
      @nullable bool isFavorited,
      DateTime lastSearchedAt}) = _$_WordSearch;

  @override
  DictionaryWord get word;
  @override
  KtList<HeadwordEntry> get results;
  @override
  @nullable
  bool get isFavorited;
  @override
  DateTime get lastSearchedAt;
  @override
  @JsonKey(ignore: true)
  _$WordSearchCopyWith<_WordSearch> get copyWith;
}
