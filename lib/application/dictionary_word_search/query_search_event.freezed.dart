// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'query_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuerySearchEventTearOff {
  const _$QuerySearchEventTearOff();

  _QuerySearchEventGetRecentlySearchedWords getRecentlySearchedWords() {
    return const _QuerySearchEventGetRecentlySearchedWords();
  }

  QuerySearchEventModifyQuery modifyQuery({String query}) {
    return QuerySearchEventModifyQuery(
      query: query,
    );
  }

  _QuerySearchEventAddNewRecentlySearchedWord addNewRecentlySearchedWord(
      {DictionaryWord newRecentlySearchedWord}) {
    return _QuerySearchEventAddNewRecentlySearchedWord(
      newRecentlySearchedWord: newRecentlySearchedWord,
    );
  }
}

// ignore: unused_element
const $QuerySearchEvent = _$QuerySearchEventTearOff();

mixin _$QuerySearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _QuerySearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(QuerySearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _QuerySearchEventAddNewRecentlySearchedWord value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _QuerySearchEventGetRecentlySearchedWords value),
    Result modifyQuery(QuerySearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _QuerySearchEventAddNewRecentlySearchedWord value),
    @required Result orElse(),
  });
}

abstract class $QuerySearchEventCopyWith<$Res> {
  factory $QuerySearchEventCopyWith(
          QuerySearchEvent value, $Res Function(QuerySearchEvent) then) =
      _$QuerySearchEventCopyWithImpl<$Res>;
}

class _$QuerySearchEventCopyWithImpl<$Res>
    implements $QuerySearchEventCopyWith<$Res> {
  _$QuerySearchEventCopyWithImpl(this._value, this._then);

  final QuerySearchEvent _value;
  // ignore: unused_field
  final $Res Function(QuerySearchEvent) _then;
}

abstract class _$QuerySearchEventGetRecentlySearchedWordsCopyWith<$Res> {
  factory _$QuerySearchEventGetRecentlySearchedWordsCopyWith(
          _QuerySearchEventGetRecentlySearchedWords value,
          $Res Function(_QuerySearchEventGetRecentlySearchedWords) then) =
      __$QuerySearchEventGetRecentlySearchedWordsCopyWithImpl<$Res>;
}

class __$QuerySearchEventGetRecentlySearchedWordsCopyWithImpl<$Res>
    extends _$QuerySearchEventCopyWithImpl<$Res>
    implements _$QuerySearchEventGetRecentlySearchedWordsCopyWith<$Res> {
  __$QuerySearchEventGetRecentlySearchedWordsCopyWithImpl(
      _QuerySearchEventGetRecentlySearchedWords _value,
      $Res Function(_QuerySearchEventGetRecentlySearchedWords) _then)
      : super(_value,
            (v) => _then(v as _QuerySearchEventGetRecentlySearchedWords));

  @override
  _QuerySearchEventGetRecentlySearchedWords get _value =>
      super._value as _QuerySearchEventGetRecentlySearchedWords;
}

class _$_QuerySearchEventGetRecentlySearchedWords
    implements _QuerySearchEventGetRecentlySearchedWords {
  const _$_QuerySearchEventGetRecentlySearchedWords();

  @override
  String toString() {
    return 'QuerySearchEvent.getRecentlySearchedWords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchEventGetRecentlySearchedWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return getRecentlySearchedWords();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRecentlySearchedWords != null) {
      return getRecentlySearchedWords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _QuerySearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(QuerySearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _QuerySearchEventAddNewRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return getRecentlySearchedWords(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _QuerySearchEventGetRecentlySearchedWords value),
    Result modifyQuery(QuerySearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _QuerySearchEventAddNewRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRecentlySearchedWords != null) {
      return getRecentlySearchedWords(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchEventGetRecentlySearchedWords
    implements QuerySearchEvent {
  const factory _QuerySearchEventGetRecentlySearchedWords() =
      _$_QuerySearchEventGetRecentlySearchedWords;
}

abstract class $QuerySearchEventModifyQueryCopyWith<$Res> {
  factory $QuerySearchEventModifyQueryCopyWith(
          QuerySearchEventModifyQuery value,
          $Res Function(QuerySearchEventModifyQuery) then) =
      _$QuerySearchEventModifyQueryCopyWithImpl<$Res>;
  $Res call({String query});
}

class _$QuerySearchEventModifyQueryCopyWithImpl<$Res>
    extends _$QuerySearchEventCopyWithImpl<$Res>
    implements $QuerySearchEventModifyQueryCopyWith<$Res> {
  _$QuerySearchEventModifyQueryCopyWithImpl(QuerySearchEventModifyQuery _value,
      $Res Function(QuerySearchEventModifyQuery) _then)
      : super(_value, (v) => _then(v as QuerySearchEventModifyQuery));

  @override
  QuerySearchEventModifyQuery get _value =>
      super._value as QuerySearchEventModifyQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(QuerySearchEventModifyQuery(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$QuerySearchEventModifyQuery implements QuerySearchEventModifyQuery {
  const _$QuerySearchEventModifyQuery({this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'QuerySearchEvent.modifyQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuerySearchEventModifyQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $QuerySearchEventModifyQueryCopyWith<QuerySearchEventModifyQuery>
      get copyWith => _$QuerySearchEventModifyQueryCopyWithImpl<
          QuerySearchEventModifyQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return modifyQuery(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (modifyQuery != null) {
      return modifyQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _QuerySearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(QuerySearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _QuerySearchEventAddNewRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return modifyQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _QuerySearchEventGetRecentlySearchedWords value),
    Result modifyQuery(QuerySearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _QuerySearchEventAddNewRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (modifyQuery != null) {
      return modifyQuery(this);
    }
    return orElse();
  }
}

abstract class QuerySearchEventModifyQuery implements QuerySearchEvent {
  const factory QuerySearchEventModifyQuery({String query}) =
      _$QuerySearchEventModifyQuery;

  String get query;
  $QuerySearchEventModifyQueryCopyWith<QuerySearchEventModifyQuery>
      get copyWith;
}

abstract class _$QuerySearchEventAddNewRecentlySearchedWordCopyWith<$Res> {
  factory _$QuerySearchEventAddNewRecentlySearchedWordCopyWith(
          _QuerySearchEventAddNewRecentlySearchedWord value,
          $Res Function(_QuerySearchEventAddNewRecentlySearchedWord) then) =
      __$QuerySearchEventAddNewRecentlySearchedWordCopyWithImpl<$Res>;
  $Res call({DictionaryWord newRecentlySearchedWord});

  $DictionaryWordCopyWith<$Res> get newRecentlySearchedWord;
}

class __$QuerySearchEventAddNewRecentlySearchedWordCopyWithImpl<$Res>
    extends _$QuerySearchEventCopyWithImpl<$Res>
    implements _$QuerySearchEventAddNewRecentlySearchedWordCopyWith<$Res> {
  __$QuerySearchEventAddNewRecentlySearchedWordCopyWithImpl(
      _QuerySearchEventAddNewRecentlySearchedWord _value,
      $Res Function(_QuerySearchEventAddNewRecentlySearchedWord) _then)
      : super(_value,
            (v) => _then(v as _QuerySearchEventAddNewRecentlySearchedWord));

  @override
  _QuerySearchEventAddNewRecentlySearchedWord get _value =>
      super._value as _QuerySearchEventAddNewRecentlySearchedWord;

  @override
  $Res call({
    Object newRecentlySearchedWord = freezed,
  }) {
    return _then(_QuerySearchEventAddNewRecentlySearchedWord(
      newRecentlySearchedWord: newRecentlySearchedWord == freezed
          ? _value.newRecentlySearchedWord
          : newRecentlySearchedWord as DictionaryWord,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get newRecentlySearchedWord {
    if (_value.newRecentlySearchedWord == null) {
      return null;
    }
    return $DictionaryWordCopyWith<$Res>(_value.newRecentlySearchedWord,
        (value) {
      return _then(_value.copyWith(newRecentlySearchedWord: value));
    });
  }
}

class _$_QuerySearchEventAddNewRecentlySearchedWord
    implements _QuerySearchEventAddNewRecentlySearchedWord {
  const _$_QuerySearchEventAddNewRecentlySearchedWord(
      {this.newRecentlySearchedWord});

  @override
  final DictionaryWord newRecentlySearchedWord;

  @override
  String toString() {
    return 'QuerySearchEvent.addNewRecentlySearchedWord(newRecentlySearchedWord: $newRecentlySearchedWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchEventAddNewRecentlySearchedWord &&
            (identical(
                    other.newRecentlySearchedWord, newRecentlySearchedWord) ||
                const DeepCollectionEquality().equals(
                    other.newRecentlySearchedWord, newRecentlySearchedWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newRecentlySearchedWord);

  @override
  _$QuerySearchEventAddNewRecentlySearchedWordCopyWith<
          _QuerySearchEventAddNewRecentlySearchedWord>
      get copyWith => __$QuerySearchEventAddNewRecentlySearchedWordCopyWithImpl<
          _QuerySearchEventAddNewRecentlySearchedWord>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return addNewRecentlySearchedWord(newRecentlySearchedWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewRecentlySearchedWord != null) {
      return addNewRecentlySearchedWord(newRecentlySearchedWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _QuerySearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(QuerySearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _QuerySearchEventAddNewRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    return addNewRecentlySearchedWord(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _QuerySearchEventGetRecentlySearchedWords value),
    Result modifyQuery(QuerySearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _QuerySearchEventAddNewRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewRecentlySearchedWord != null) {
      return addNewRecentlySearchedWord(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchEventAddNewRecentlySearchedWord
    implements QuerySearchEvent {
  const factory _QuerySearchEventAddNewRecentlySearchedWord(
          {DictionaryWord newRecentlySearchedWord}) =
      _$_QuerySearchEventAddNewRecentlySearchedWord;

  DictionaryWord get newRecentlySearchedWord;
  _$QuerySearchEventAddNewRecentlySearchedWordCopyWith<
      _QuerySearchEventAddNewRecentlySearchedWord> get copyWith;
}
