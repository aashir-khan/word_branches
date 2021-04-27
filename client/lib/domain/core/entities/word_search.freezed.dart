// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WordSearchTearOff {
  const _$WordSearchTearOff();

  _WordSearch call(
      {required DictionaryWord word,
      required KtList<HeadwordEntry> results,
      bool isFavorited = false,
      DateTime? lastSearchedAt}) {
    return _WordSearch(
      word: word,
      results: results,
      isFavorited: isFavorited,
      lastSearchedAt: lastSearchedAt,
    );
  }
}

/// @nodoc
const $WordSearch = _$WordSearchTearOff();

/// @nodoc
mixin _$WordSearch {
  DictionaryWord get word => throw _privateConstructorUsedError;
  KtList<HeadwordEntry> get results => throw _privateConstructorUsedError;
  bool get isFavorited => throw _privateConstructorUsedError;
  DateTime? get lastSearchedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordSearchCopyWith<WordSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordSearchCopyWith<$Res> {
  factory $WordSearchCopyWith(
          WordSearch value, $Res Function(WordSearch) then) =
      _$WordSearchCopyWithImpl<$Res>;
  $Res call(
      {DictionaryWord word,
      KtList<HeadwordEntry> results,
      bool isFavorited,
      DateTime? lastSearchedAt});

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
    Object? word = freezed,
    Object? results = freezed,
    Object? isFavorited = freezed,
    Object? lastSearchedAt = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as KtList<HeadwordEntry>,
      isFavorited: isFavorited == freezed
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get word {
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
      bool isFavorited,
      DateTime? lastSearchedAt});

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
    Object? word = freezed,
    Object? results = freezed,
    Object? isFavorited = freezed,
    Object? lastSearchedAt = freezed,
  }) {
    return _then(_WordSearch(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as KtList<HeadwordEntry>,
      isFavorited: isFavorited == freezed
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSearchedAt: lastSearchedAt == freezed
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_WordSearch implements _WordSearch {
  const _$_WordSearch(
      {required this.word,
      required this.results,
      this.isFavorited = false,
      this.lastSearchedAt});

  @override
  final DictionaryWord word;
  @override
  final KtList<HeadwordEntry> results;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavorited;
  @override
  final DateTime? lastSearchedAt;

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
      {required DictionaryWord word,
      required KtList<HeadwordEntry> results,
      bool isFavorited,
      DateTime? lastSearchedAt}) = _$_WordSearch;

  @override
  DictionaryWord get word => throw _privateConstructorUsedError;
  @override
  KtList<HeadwordEntry> get results => throw _privateConstructorUsedError;
  @override
  bool get isFavorited => throw _privateConstructorUsedError;
  @override
  DateTime? get lastSearchedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordSearchCopyWith<_WordSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
