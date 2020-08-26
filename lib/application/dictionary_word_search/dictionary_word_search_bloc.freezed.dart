// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dictionary_word_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DictionaryWordSearchEventTearOff {
  const _$DictionaryWordSearchEventTearOff();

// ignore: unused_element
  _DictionaryWordSearchEventGetRecentlySearchedWords
      getRecentlySearchedWords() {
    return const _DictionaryWordSearchEventGetRecentlySearchedWords();
  }

// ignore: unused_element
  DictionaryWordSearchEventModifyQuery modifyQuery({String query}) {
    return DictionaryWordSearchEventModifyQuery(
      query: query,
    );
  }

// ignore: unused_element
  _DictionaryWordSearchEventAddNewRecentlySearchedWord
      addNewRecentlySearchedWord({DictionaryWord newRecentlySearchedWord}) {
    return _DictionaryWordSearchEventAddNewRecentlySearchedWord(
      newRecentlySearchedWord: newRecentlySearchedWord,
    );
  }

// ignore: unused_element
  _DictionaryWordSearchEventDeleteRecentlySearchedWord
      deleteRecentlySearchedWord({@required DictionaryWord wordToDelete}) {
    return _DictionaryWordSearchEventDeleteRecentlySearchedWord(
      wordToDelete: wordToDelete,
    );
  }
}

// ignore: unused_element
const $DictionaryWordSearchEvent = _$DictionaryWordSearchEventTearOff();

mixin _$DictionaryWordSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
    @required Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _DictionaryWordSearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    @required
        Result deleteRecentlySearchedWord(
            _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _DictionaryWordSearchEventGetRecentlySearchedWords value),
    Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    Result deleteRecentlySearchedWord(
        _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
    @required Result orElse(),
  });
}

abstract class $DictionaryWordSearchEventCopyWith<$Res> {
  factory $DictionaryWordSearchEventCopyWith(DictionaryWordSearchEvent value,
          $Res Function(DictionaryWordSearchEvent) then) =
      _$DictionaryWordSearchEventCopyWithImpl<$Res>;
}

class _$DictionaryWordSearchEventCopyWithImpl<$Res>
    implements $DictionaryWordSearchEventCopyWith<$Res> {
  _$DictionaryWordSearchEventCopyWithImpl(this._value, this._then);

  final DictionaryWordSearchEvent _value;
  // ignore: unused_field
  final $Res Function(DictionaryWordSearchEvent) _then;
}

abstract class _$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWith<
    $Res> {
  factory _$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWith(
          _DictionaryWordSearchEventGetRecentlySearchedWords value,
          $Res Function(_DictionaryWordSearchEventGetRecentlySearchedWords)
              then) =
      __$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWithImpl<$Res>;
}

class __$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWithImpl<$Res>
    extends _$DictionaryWordSearchEventCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWith<$Res> {
  __$DictionaryWordSearchEventGetRecentlySearchedWordsCopyWithImpl(
      _DictionaryWordSearchEventGetRecentlySearchedWords _value,
      $Res Function(_DictionaryWordSearchEventGetRecentlySearchedWords) _then)
      : super(
            _value,
            (v) =>
                _then(v as _DictionaryWordSearchEventGetRecentlySearchedWords));

  @override
  _DictionaryWordSearchEventGetRecentlySearchedWords get _value =>
      super._value as _DictionaryWordSearchEventGetRecentlySearchedWords;
}

class _$_DictionaryWordSearchEventGetRecentlySearchedWords
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchEventGetRecentlySearchedWords {
  const _$_DictionaryWordSearchEventGetRecentlySearchedWords();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchEvent.getRecentlySearchedWords()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchEvent.getRecentlySearchedWords'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchEventGetRecentlySearchedWords);
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
    @required Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return getRecentlySearchedWords();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
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
            _DictionaryWordSearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    @required
        Result deleteRecentlySearchedWord(
            _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return getRecentlySearchedWords(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _DictionaryWordSearchEventGetRecentlySearchedWords value),
    Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    Result deleteRecentlySearchedWord(
        _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getRecentlySearchedWords != null) {
      return getRecentlySearchedWords(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchEventGetRecentlySearchedWords
    implements DictionaryWordSearchEvent {
  const factory _DictionaryWordSearchEventGetRecentlySearchedWords() =
      _$_DictionaryWordSearchEventGetRecentlySearchedWords;
}

abstract class $DictionaryWordSearchEventModifyQueryCopyWith<$Res> {
  factory $DictionaryWordSearchEventModifyQueryCopyWith(
          DictionaryWordSearchEventModifyQuery value,
          $Res Function(DictionaryWordSearchEventModifyQuery) then) =
      _$DictionaryWordSearchEventModifyQueryCopyWithImpl<$Res>;
  $Res call({String query});
}

class _$DictionaryWordSearchEventModifyQueryCopyWithImpl<$Res>
    extends _$DictionaryWordSearchEventCopyWithImpl<$Res>
    implements $DictionaryWordSearchEventModifyQueryCopyWith<$Res> {
  _$DictionaryWordSearchEventModifyQueryCopyWithImpl(
      DictionaryWordSearchEventModifyQuery _value,
      $Res Function(DictionaryWordSearchEventModifyQuery) _then)
      : super(_value, (v) => _then(v as DictionaryWordSearchEventModifyQuery));

  @override
  DictionaryWordSearchEventModifyQuery get _value =>
      super._value as DictionaryWordSearchEventModifyQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(DictionaryWordSearchEventModifyQuery(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

class _$DictionaryWordSearchEventModifyQuery
    with DiagnosticableTreeMixin
    implements DictionaryWordSearchEventModifyQuery {
  const _$DictionaryWordSearchEventModifyQuery({this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchEvent.modifyQuery(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'DictionaryWordSearchEvent.modifyQuery'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DictionaryWordSearchEventModifyQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $DictionaryWordSearchEventModifyQueryCopyWith<
          DictionaryWordSearchEventModifyQuery>
      get copyWith => _$DictionaryWordSearchEventModifyQueryCopyWithImpl<
          DictionaryWordSearchEventModifyQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
    @required Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return modifyQuery(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
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
            _DictionaryWordSearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    @required
        Result deleteRecentlySearchedWord(
            _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return modifyQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _DictionaryWordSearchEventGetRecentlySearchedWords value),
    Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    Result deleteRecentlySearchedWord(
        _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (modifyQuery != null) {
      return modifyQuery(this);
    }
    return orElse();
  }
}

abstract class DictionaryWordSearchEventModifyQuery
    implements DictionaryWordSearchEvent {
  const factory DictionaryWordSearchEventModifyQuery({String query}) =
      _$DictionaryWordSearchEventModifyQuery;

  String get query;
  $DictionaryWordSearchEventModifyQueryCopyWith<
      DictionaryWordSearchEventModifyQuery> get copyWith;
}

abstract class _$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWith<
    $Res> {
  factory _$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWith(
          _DictionaryWordSearchEventAddNewRecentlySearchedWord value,
          $Res Function(_DictionaryWordSearchEventAddNewRecentlySearchedWord)
              then) =
      __$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWithImpl<$Res>;
  $Res call({DictionaryWord newRecentlySearchedWord});

  $DictionaryWordCopyWith<$Res> get newRecentlySearchedWord;
}

class __$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWithImpl<$Res>
    extends _$DictionaryWordSearchEventCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWith<$Res> {
  __$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWithImpl(
      _DictionaryWordSearchEventAddNewRecentlySearchedWord _value,
      $Res Function(_DictionaryWordSearchEventAddNewRecentlySearchedWord) _then)
      : super(
            _value,
            (v) => _then(
                v as _DictionaryWordSearchEventAddNewRecentlySearchedWord));

  @override
  _DictionaryWordSearchEventAddNewRecentlySearchedWord get _value =>
      super._value as _DictionaryWordSearchEventAddNewRecentlySearchedWord;

  @override
  $Res call({
    Object newRecentlySearchedWord = freezed,
  }) {
    return _then(_DictionaryWordSearchEventAddNewRecentlySearchedWord(
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

class _$_DictionaryWordSearchEventAddNewRecentlySearchedWord
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchEventAddNewRecentlySearchedWord {
  const _$_DictionaryWordSearchEventAddNewRecentlySearchedWord(
      {this.newRecentlySearchedWord});

  @override
  final DictionaryWord newRecentlySearchedWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchEvent.addNewRecentlySearchedWord(newRecentlySearchedWord: $newRecentlySearchedWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchEvent.addNewRecentlySearchedWord'))
      ..add(DiagnosticsProperty(
          'newRecentlySearchedWord', newRecentlySearchedWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchEventAddNewRecentlySearchedWord &&
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
  _$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWith<
          _DictionaryWordSearchEventAddNewRecentlySearchedWord>
      get copyWith =>
          __$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWithImpl<
                  _DictionaryWordSearchEventAddNewRecentlySearchedWord>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
    @required Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return addNewRecentlySearchedWord(newRecentlySearchedWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
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
            _DictionaryWordSearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    @required
        Result deleteRecentlySearchedWord(
            _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return addNewRecentlySearchedWord(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _DictionaryWordSearchEventGetRecentlySearchedWords value),
    Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    Result deleteRecentlySearchedWord(
        _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewRecentlySearchedWord != null) {
      return addNewRecentlySearchedWord(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchEventAddNewRecentlySearchedWord
    implements DictionaryWordSearchEvent {
  const factory _DictionaryWordSearchEventAddNewRecentlySearchedWord(
          {DictionaryWord newRecentlySearchedWord}) =
      _$_DictionaryWordSearchEventAddNewRecentlySearchedWord;

  DictionaryWord get newRecentlySearchedWord;
  _$DictionaryWordSearchEventAddNewRecentlySearchedWordCopyWith<
      _DictionaryWordSearchEventAddNewRecentlySearchedWord> get copyWith;
}

abstract class _$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWith<
    $Res> {
  factory _$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWith(
          _DictionaryWordSearchEventDeleteRecentlySearchedWord value,
          $Res Function(_DictionaryWordSearchEventDeleteRecentlySearchedWord)
              then) =
      __$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWithImpl<$Res>;
  $Res call({DictionaryWord wordToDelete});

  $DictionaryWordCopyWith<$Res> get wordToDelete;
}

class __$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWithImpl<$Res>
    extends _$DictionaryWordSearchEventCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWith<$Res> {
  __$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWithImpl(
      _DictionaryWordSearchEventDeleteRecentlySearchedWord _value,
      $Res Function(_DictionaryWordSearchEventDeleteRecentlySearchedWord) _then)
      : super(
            _value,
            (v) => _then(
                v as _DictionaryWordSearchEventDeleteRecentlySearchedWord));

  @override
  _DictionaryWordSearchEventDeleteRecentlySearchedWord get _value =>
      super._value as _DictionaryWordSearchEventDeleteRecentlySearchedWord;

  @override
  $Res call({
    Object wordToDelete = freezed,
  }) {
    return _then(_DictionaryWordSearchEventDeleteRecentlySearchedWord(
      wordToDelete: wordToDelete == freezed
          ? _value.wordToDelete
          : wordToDelete as DictionaryWord,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get wordToDelete {
    if (_value.wordToDelete == null) {
      return null;
    }
    return $DictionaryWordCopyWith<$Res>(_value.wordToDelete, (value) {
      return _then(_value.copyWith(wordToDelete: value));
    });
  }
}

class _$_DictionaryWordSearchEventDeleteRecentlySearchedWord
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchEventDeleteRecentlySearchedWord {
  const _$_DictionaryWordSearchEventDeleteRecentlySearchedWord(
      {@required this.wordToDelete})
      : assert(wordToDelete != null);

  @override
  final DictionaryWord wordToDelete;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchEvent.deleteRecentlySearchedWord(wordToDelete: $wordToDelete)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchEvent.deleteRecentlySearchedWord'))
      ..add(DiagnosticsProperty('wordToDelete', wordToDelete));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchEventDeleteRecentlySearchedWord &&
            (identical(other.wordToDelete, wordToDelete) ||
                const DeepCollectionEquality()
                    .equals(other.wordToDelete, wordToDelete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wordToDelete);

  @override
  _$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWith<
          _DictionaryWordSearchEventDeleteRecentlySearchedWord>
      get copyWith =>
          __$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWithImpl<
                  _DictionaryWordSearchEventDeleteRecentlySearchedWord>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getRecentlySearchedWords(),
    @required Result modifyQuery(String query),
    @required
        Result addNewRecentlySearchedWord(
            DictionaryWord newRecentlySearchedWord),
    @required Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return deleteRecentlySearchedWord(wordToDelete);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getRecentlySearchedWords(),
    Result modifyQuery(String query),
    Result addNewRecentlySearchedWord(DictionaryWord newRecentlySearchedWord),
    Result deleteRecentlySearchedWord(DictionaryWord wordToDelete),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteRecentlySearchedWord != null) {
      return deleteRecentlySearchedWord(wordToDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getRecentlySearchedWords(
            _DictionaryWordSearchEventGetRecentlySearchedWords value),
    @required Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    @required
        Result addNewRecentlySearchedWord(
            _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    @required
        Result deleteRecentlySearchedWord(
            _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
  }) {
    assert(getRecentlySearchedWords != null);
    assert(modifyQuery != null);
    assert(addNewRecentlySearchedWord != null);
    assert(deleteRecentlySearchedWord != null);
    return deleteRecentlySearchedWord(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getRecentlySearchedWords(
        _DictionaryWordSearchEventGetRecentlySearchedWords value),
    Result modifyQuery(DictionaryWordSearchEventModifyQuery value),
    Result addNewRecentlySearchedWord(
        _DictionaryWordSearchEventAddNewRecentlySearchedWord value),
    Result deleteRecentlySearchedWord(
        _DictionaryWordSearchEventDeleteRecentlySearchedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteRecentlySearchedWord != null) {
      return deleteRecentlySearchedWord(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchEventDeleteRecentlySearchedWord
    implements DictionaryWordSearchEvent {
  const factory _DictionaryWordSearchEventDeleteRecentlySearchedWord(
          {@required DictionaryWord wordToDelete}) =
      _$_DictionaryWordSearchEventDeleteRecentlySearchedWord;

  DictionaryWord get wordToDelete;
  _$DictionaryWordSearchEventDeleteRecentlySearchedWordCopyWith<
      _DictionaryWordSearchEventDeleteRecentlySearchedWord> get copyWith;
}

class _$DictionaryWordSearchStateTearOff {
  const _$DictionaryWordSearchStateTearOff();

// ignore: unused_element
  _DictionaryWordSearchStateInitial initial() {
    return const _DictionaryWordSearchStateInitial();
  }

// ignore: unused_element
  _DictionaryWordSearchStateLoadInProgress loadInProgress() {
    return const _DictionaryWordSearchStateLoadInProgress();
  }

// ignore: unused_element
  _DictionaryWordSearchStateLoadSearchResultsSuccess loadSearchResultsSuccess(
      {KtList<DictionaryWord> words}) {
    return _DictionaryWordSearchStateLoadSearchResultsSuccess(
      words: words,
    );
  }

// ignore: unused_element
  _DictionaryWordSearchStateLoadFailure loadFailure({String message}) {
    return _DictionaryWordSearchStateLoadFailure(
      message: message,
    );
  }

// ignore: unused_element
  _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
      newWordAddedToRecentlySearchedWords(
          {@required DictionaryWord addedWord}) {
    return _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords(
      addedWord: addedWord,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess({@required DictionaryWord deletedWord}) {
    return _DeleteSuccess(
      deletedWord: deletedWord,
    );
  }

// ignore: unused_element
  _DictionaryWordSearchLoadRecentlySearchedWordsSuccess
      loadRecentlySearchedWordsResultsSuccess(
          {KtList<DictionaryWord> recentlySearchedWords}) {
    return _DictionaryWordSearchLoadRecentlySearchedWordsSuccess(
      recentlySearchedWords: recentlySearchedWords,
    );
  }
}

// ignore: unused_element
const $DictionaryWordSearchState = _$DictionaryWordSearchStateTearOff();

mixin _$DictionaryWordSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  });
}

abstract class $DictionaryWordSearchStateCopyWith<$Res> {
  factory $DictionaryWordSearchStateCopyWith(DictionaryWordSearchState value,
          $Res Function(DictionaryWordSearchState) then) =
      _$DictionaryWordSearchStateCopyWithImpl<$Res>;
}

class _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements $DictionaryWordSearchStateCopyWith<$Res> {
  _$DictionaryWordSearchStateCopyWithImpl(this._value, this._then);

  final DictionaryWordSearchState _value;
  // ignore: unused_field
  final $Res Function(DictionaryWordSearchState) _then;
}

abstract class _$DictionaryWordSearchStateInitialCopyWith<$Res> {
  factory _$DictionaryWordSearchStateInitialCopyWith(
          _DictionaryWordSearchStateInitial value,
          $Res Function(_DictionaryWordSearchStateInitial) then) =
      __$DictionaryWordSearchStateInitialCopyWithImpl<$Res>;
}

class __$DictionaryWordSearchStateInitialCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements _$DictionaryWordSearchStateInitialCopyWith<$Res> {
  __$DictionaryWordSearchStateInitialCopyWithImpl(
      _DictionaryWordSearchStateInitial _value,
      $Res Function(_DictionaryWordSearchStateInitial) _then)
      : super(_value, (v) => _then(v as _DictionaryWordSearchStateInitial));

  @override
  _DictionaryWordSearchStateInitial get _value =>
      super._value as _DictionaryWordSearchStateInitial;
}

class _$_DictionaryWordSearchStateInitial
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchStateInitial {
  const _$_DictionaryWordSearchStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DictionaryWordSearchState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchStateInitial
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchStateInitial() =
      _$_DictionaryWordSearchStateInitial;
}

abstract class _$DictionaryWordSearchStateLoadInProgressCopyWith<$Res> {
  factory _$DictionaryWordSearchStateLoadInProgressCopyWith(
          _DictionaryWordSearchStateLoadInProgress value,
          $Res Function(_DictionaryWordSearchStateLoadInProgress) then) =
      __$DictionaryWordSearchStateLoadInProgressCopyWithImpl<$Res>;
}

class __$DictionaryWordSearchStateLoadInProgressCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements _$DictionaryWordSearchStateLoadInProgressCopyWith<$Res> {
  __$DictionaryWordSearchStateLoadInProgressCopyWithImpl(
      _DictionaryWordSearchStateLoadInProgress _value,
      $Res Function(_DictionaryWordSearchStateLoadInProgress) _then)
      : super(_value,
            (v) => _then(v as _DictionaryWordSearchStateLoadInProgress));

  @override
  _DictionaryWordSearchStateLoadInProgress get _value =>
      super._value as _DictionaryWordSearchStateLoadInProgress;
}

class _$_DictionaryWordSearchStateLoadInProgress
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchStateLoadInProgress {
  const _$_DictionaryWordSearchStateLoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchStateLoadInProgress
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchStateLoadInProgress() =
      _$_DictionaryWordSearchStateLoadInProgress;
}

abstract class _$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWith<
    $Res> {
  factory _$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWith(
          _DictionaryWordSearchStateLoadSearchResultsSuccess value,
          $Res Function(_DictionaryWordSearchStateLoadSearchResultsSuccess)
              then) =
      __$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DictionaryWord> words});
}

class __$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWith<$Res> {
  __$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWithImpl(
      _DictionaryWordSearchStateLoadSearchResultsSuccess _value,
      $Res Function(_DictionaryWordSearchStateLoadSearchResultsSuccess) _then)
      : super(
            _value,
            (v) =>
                _then(v as _DictionaryWordSearchStateLoadSearchResultsSuccess));

  @override
  _DictionaryWordSearchStateLoadSearchResultsSuccess get _value =>
      super._value as _DictionaryWordSearchStateLoadSearchResultsSuccess;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(_DictionaryWordSearchStateLoadSearchResultsSuccess(
      words: words == freezed ? _value.words : words as KtList<DictionaryWord>,
    ));
  }
}

class _$_DictionaryWordSearchStateLoadSearchResultsSuccess
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchStateLoadSearchResultsSuccess {
  const _$_DictionaryWordSearchStateLoadSearchResultsSuccess({this.words});

  @override
  final KtList<DictionaryWord> words;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.loadSearchResultsSuccess(words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchState.loadSearchResultsSuccess'))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchStateLoadSearchResultsSuccess &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @override
  _$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWith<
          _DictionaryWordSearchStateLoadSearchResultsSuccess>
      get copyWith =>
          __$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWithImpl<
                  _DictionaryWordSearchStateLoadSearchResultsSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadSearchResultsSuccess(words);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSearchResultsSuccess != null) {
      return loadSearchResultsSuccess(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadSearchResultsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSearchResultsSuccess != null) {
      return loadSearchResultsSuccess(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchStateLoadSearchResultsSuccess
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchStateLoadSearchResultsSuccess(
          {KtList<DictionaryWord> words}) =
      _$_DictionaryWordSearchStateLoadSearchResultsSuccess;

  KtList<DictionaryWord> get words;
  _$DictionaryWordSearchStateLoadSearchResultsSuccessCopyWith<
      _DictionaryWordSearchStateLoadSearchResultsSuccess> get copyWith;
}

abstract class _$DictionaryWordSearchStateLoadFailureCopyWith<$Res> {
  factory _$DictionaryWordSearchStateLoadFailureCopyWith(
          _DictionaryWordSearchStateLoadFailure value,
          $Res Function(_DictionaryWordSearchStateLoadFailure) then) =
      __$DictionaryWordSearchStateLoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$DictionaryWordSearchStateLoadFailureCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements _$DictionaryWordSearchStateLoadFailureCopyWith<$Res> {
  __$DictionaryWordSearchStateLoadFailureCopyWithImpl(
      _DictionaryWordSearchStateLoadFailure _value,
      $Res Function(_DictionaryWordSearchStateLoadFailure) _then)
      : super(_value, (v) => _then(v as _DictionaryWordSearchStateLoadFailure));

  @override
  _DictionaryWordSearchStateLoadFailure get _value =>
      super._value as _DictionaryWordSearchStateLoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_DictionaryWordSearchStateLoadFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_DictionaryWordSearchStateLoadFailure
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchStateLoadFailure {
  const _$_DictionaryWordSearchStateLoadFailure({this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.loadFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'DictionaryWordSearchState.loadFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchStateLoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$DictionaryWordSearchStateLoadFailureCopyWith<
          _DictionaryWordSearchStateLoadFailure>
      get copyWith => __$DictionaryWordSearchStateLoadFailureCopyWithImpl<
          _DictionaryWordSearchStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchStateLoadFailure
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchStateLoadFailure({String message}) =
      _$_DictionaryWordSearchStateLoadFailure;

  String get message;
  _$DictionaryWordSearchStateLoadFailureCopyWith<
      _DictionaryWordSearchStateLoadFailure> get copyWith;
}

abstract class _$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
    $Res> {
  factory _$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWith(
          _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value,
          $Res Function(
                  _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords)
              then) =
      __$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<
          $Res>;
  $Res call({DictionaryWord addedWord});

  $DictionaryWordCopyWith<$Res> get addedWord;
}

class __$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<
        $Res> extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
            $Res> {
  __$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl(
      _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords _value,
      $Res Function(
              _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords)
          _then)
      : super(
            _value,
            (v) => _then(v
                as _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords));

  @override
  _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords get _value =>
      super._value
          as _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords;

  @override
  $Res call({
    Object addedWord = freezed,
  }) {
    return _then(_DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords(
      addedWord:
          addedWord == freezed ? _value.addedWord : addedWord as DictionaryWord,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get addedWord {
    if (_value.addedWord == null) {
      return null;
    }
    return $DictionaryWordCopyWith<$Res>(_value.addedWord, (value) {
      return _then(_value.copyWith(addedWord: value));
    });
  }
}

class _$_DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords {
  const _$_DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords(
      {@required this.addedWord})
      : assert(addedWord != null);

  @override
  final DictionaryWord addedWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.newWordAddedToRecentlySearchedWords(addedWord: $addedWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type',
          'DictionaryWordSearchState.newWordAddedToRecentlySearchedWords'))
      ..add(DiagnosticsProperty('addedWord', addedWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords &&
            (identical(other.addedWord, addedWord) ||
                const DeepCollectionEquality()
                    .equals(other.addedWord, addedWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addedWord);

  @override
  _$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
          _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords>
      get copyWith =>
          __$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<
                  _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return newWordAddedToRecentlySearchedWords(addedWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newWordAddedToRecentlySearchedWords != null) {
      return newWordAddedToRecentlySearchedWords(addedWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return newWordAddedToRecentlySearchedWords(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newWordAddedToRecentlySearchedWords != null) {
      return newWordAddedToRecentlySearchedWords(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords(
          {@required DictionaryWord addedWord}) =
      _$_DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords;

  DictionaryWord get addedWord;
  _$DictionaryWordSearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
          _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords>
      get copyWith;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
  $Res call({DictionaryWord deletedWord});

  $DictionaryWordCopyWith<$Res> get deletedWord;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;

  @override
  $Res call({
    Object deletedWord = freezed,
  }) {
    return _then(_DeleteSuccess(
      deletedWord: deletedWord == freezed
          ? _value.deletedWord
          : deletedWord as DictionaryWord,
    ));
  }

  @override
  $DictionaryWordCopyWith<$Res> get deletedWord {
    if (_value.deletedWord == null) {
      return null;
    }
    return $DictionaryWordCopyWith<$Res>(_value.deletedWord, (value) {
      return _then(_value.copyWith(deletedWord: value));
    });
  }
}

class _$_DeleteSuccess with DiagnosticableTreeMixin implements _DeleteSuccess {
  const _$_DeleteSuccess({@required this.deletedWord})
      : assert(deletedWord != null);

  @override
  final DictionaryWord deletedWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.deleteSuccess(deletedWord: $deletedWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchState.deleteSuccess'))
      ..add(DiagnosticsProperty('deletedWord', deletedWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteSuccess &&
            (identical(other.deletedWord, deletedWord) ||
                const DeepCollectionEquality()
                    .equals(other.deletedWord, deletedWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deletedWord);

  @override
  _$DeleteSuccessCopyWith<_DeleteSuccess> get copyWith =>
      __$DeleteSuccessCopyWithImpl<_DeleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return deleteSuccess(deletedWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(deletedWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements DictionaryWordSearchState {
  const factory _DeleteSuccess({@required DictionaryWord deletedWord}) =
      _$_DeleteSuccess;

  DictionaryWord get deletedWord;
  _$DeleteSuccessCopyWith<_DeleteSuccess> get copyWith;
}

abstract class _$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWith<
    $Res> {
  factory _$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWith(
          _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value,
          $Res Function(_DictionaryWordSearchLoadRecentlySearchedWordsSuccess)
              then) =
      __$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DictionaryWord> recentlySearchedWords});
}

class __$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWithImpl<$Res>
    extends _$DictionaryWordSearchStateCopyWithImpl<$Res>
    implements
        _$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWith<$Res> {
  __$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWithImpl(
      _DictionaryWordSearchLoadRecentlySearchedWordsSuccess _value,
      $Res Function(_DictionaryWordSearchLoadRecentlySearchedWordsSuccess)
          _then)
      : super(
            _value,
            (v) => _then(
                v as _DictionaryWordSearchLoadRecentlySearchedWordsSuccess));

  @override
  _DictionaryWordSearchLoadRecentlySearchedWordsSuccess get _value =>
      super._value as _DictionaryWordSearchLoadRecentlySearchedWordsSuccess;

  @override
  $Res call({
    Object recentlySearchedWords = freezed,
  }) {
    return _then(_DictionaryWordSearchLoadRecentlySearchedWordsSuccess(
      recentlySearchedWords: recentlySearchedWords == freezed
          ? _value.recentlySearchedWords
          : recentlySearchedWords as KtList<DictionaryWord>,
    ));
  }
}

class _$_DictionaryWordSearchLoadRecentlySearchedWordsSuccess
    with DiagnosticableTreeMixin
    implements _DictionaryWordSearchLoadRecentlySearchedWordsSuccess {
  const _$_DictionaryWordSearchLoadRecentlySearchedWordsSuccess(
      {this.recentlySearchedWords});

  @override
  final KtList<DictionaryWord> recentlySearchedWords;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DictionaryWordSearchState.loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords: $recentlySearchedWords)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type',
          'DictionaryWordSearchState.loadRecentlySearchedWordsResultsSuccess'))
      ..add(
          DiagnosticsProperty('recentlySearchedWords', recentlySearchedWords));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordSearchLoadRecentlySearchedWordsSuccess &&
            (identical(other.recentlySearchedWords, recentlySearchedWords) ||
                const DeepCollectionEquality().equals(
                    other.recentlySearchedWords, recentlySearchedWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recentlySearchedWords);

  @override
  _$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWith<
          _DictionaryWordSearchLoadRecentlySearchedWordsSuccess>
      get copyWith =>
          __$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWithImpl<
                  _DictionaryWordSearchLoadRecentlySearchedWordsSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required Result deleteSuccess(DictionaryWord deletedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result deleteSuccess(DictionaryWord deletedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadRecentlySearchedWordsResultsSuccess != null) {
      return loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(deleteSuccess != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadRecentlySearchedWordsResultsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgress(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result deleteSuccess(_DeleteSuccess value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadRecentlySearchedWordsResultsSuccess != null) {
      return loadRecentlySearchedWordsResultsSuccess(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordSearchLoadRecentlySearchedWordsSuccess
    implements DictionaryWordSearchState {
  const factory _DictionaryWordSearchLoadRecentlySearchedWordsSuccess(
          {KtList<DictionaryWord> recentlySearchedWords}) =
      _$_DictionaryWordSearchLoadRecentlySearchedWordsSuccess;

  KtList<DictionaryWord> get recentlySearchedWords;
  _$DictionaryWordSearchLoadRecentlySearchedWordsSuccessCopyWith<
      _DictionaryWordSearchLoadRecentlySearchedWordsSuccess> get copyWith;
}
