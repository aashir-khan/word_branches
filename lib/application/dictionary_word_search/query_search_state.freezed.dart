// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'query_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuerySearchStateTearOff {
  const _$QuerySearchStateTearOff();

  _QuerySearchStateInitial initial() {
    return const _QuerySearchStateInitial();
  }

  _QuerySearchStateLoadInProgress loadInProgreess() {
    return const _QuerySearchStateLoadInProgress();
  }

  _QuerySearchStateLoadSearchResultsSuccess loadSearchResultsSuccess(
      {List<DictionaryWord> words}) {
    return _QuerySearchStateLoadSearchResultsSuccess(
      words: words,
    );
  }

  _QuerySearchStateLoadFailure loadFailure({String message}) {
    return _QuerySearchStateLoadFailure(
      message: message,
    );
  }

  _QuerySearchStateNewWordAddedToRecentlySearchedWords
      newWordAddedToRecentlySearchedWords(
          {@required DictionaryWord addedWord}) {
    return _QuerySearchStateNewWordAddedToRecentlySearchedWords(
      addedWord: addedWord,
    );
  }

  _QuerySearchLoadRecentlySearchedWordsSuccess
      loadRecentlySearchedWordsResultsSuccess(
          {List<DictionaryWord> recentlySearchedWords}) {
    return _QuerySearchLoadRecentlySearchedWordsSuccess(
      recentlySearchedWords: recentlySearchedWords,
    );
  }
}

// ignore: unused_element
const $QuerySearchState = _$QuerySearchStateTearOff();

mixin _$QuerySearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  });
}

abstract class $QuerySearchStateCopyWith<$Res> {
  factory $QuerySearchStateCopyWith(
          QuerySearchState value, $Res Function(QuerySearchState) then) =
      _$QuerySearchStateCopyWithImpl<$Res>;
}

class _$QuerySearchStateCopyWithImpl<$Res>
    implements $QuerySearchStateCopyWith<$Res> {
  _$QuerySearchStateCopyWithImpl(this._value, this._then);

  final QuerySearchState _value;
  // ignore: unused_field
  final $Res Function(QuerySearchState) _then;
}

abstract class _$QuerySearchStateInitialCopyWith<$Res> {
  factory _$QuerySearchStateInitialCopyWith(_QuerySearchStateInitial value,
          $Res Function(_QuerySearchStateInitial) then) =
      __$QuerySearchStateInitialCopyWithImpl<$Res>;
}

class __$QuerySearchStateInitialCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements _$QuerySearchStateInitialCopyWith<$Res> {
  __$QuerySearchStateInitialCopyWithImpl(_QuerySearchStateInitial _value,
      $Res Function(_QuerySearchStateInitial) _then)
      : super(_value, (v) => _then(v as _QuerySearchStateInitial));

  @override
  _QuerySearchStateInitial get _value =>
      super._value as _QuerySearchStateInitial;
}

class _$_QuerySearchStateInitial
    with DiagnosticableTreeMixin
    implements _QuerySearchStateInitial {
  const _$_QuerySearchStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'QuerySearchState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QuerySearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchStateInitial implements QuerySearchState {
  const factory _QuerySearchStateInitial() = _$_QuerySearchStateInitial;
}

abstract class _$QuerySearchStateLoadInProgressCopyWith<$Res> {
  factory _$QuerySearchStateLoadInProgressCopyWith(
          _QuerySearchStateLoadInProgress value,
          $Res Function(_QuerySearchStateLoadInProgress) then) =
      __$QuerySearchStateLoadInProgressCopyWithImpl<$Res>;
}

class __$QuerySearchStateLoadInProgressCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements _$QuerySearchStateLoadInProgressCopyWith<$Res> {
  __$QuerySearchStateLoadInProgressCopyWithImpl(
      _QuerySearchStateLoadInProgress _value,
      $Res Function(_QuerySearchStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as _QuerySearchStateLoadInProgress));

  @override
  _QuerySearchStateLoadInProgress get _value =>
      super._value as _QuerySearchStateLoadInProgress;
}

class _$_QuerySearchStateLoadInProgress
    with DiagnosticableTreeMixin
    implements _QuerySearchStateLoadInProgress {
  const _$_QuerySearchStateLoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.loadInProgreess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySearchState.loadInProgreess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QuerySearchStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadInProgreess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgreess != null) {
      return loadInProgreess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadInProgreess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgreess != null) {
      return loadInProgreess(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchStateLoadInProgress implements QuerySearchState {
  const factory _QuerySearchStateLoadInProgress() =
      _$_QuerySearchStateLoadInProgress;
}

abstract class _$QuerySearchStateLoadSearchResultsSuccessCopyWith<$Res> {
  factory _$QuerySearchStateLoadSearchResultsSuccessCopyWith(
          _QuerySearchStateLoadSearchResultsSuccess value,
          $Res Function(_QuerySearchStateLoadSearchResultsSuccess) then) =
      __$QuerySearchStateLoadSearchResultsSuccessCopyWithImpl<$Res>;
  $Res call({List<DictionaryWord> words});
}

class __$QuerySearchStateLoadSearchResultsSuccessCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements _$QuerySearchStateLoadSearchResultsSuccessCopyWith<$Res> {
  __$QuerySearchStateLoadSearchResultsSuccessCopyWithImpl(
      _QuerySearchStateLoadSearchResultsSuccess _value,
      $Res Function(_QuerySearchStateLoadSearchResultsSuccess) _then)
      : super(_value,
            (v) => _then(v as _QuerySearchStateLoadSearchResultsSuccess));

  @override
  _QuerySearchStateLoadSearchResultsSuccess get _value =>
      super._value as _QuerySearchStateLoadSearchResultsSuccess;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(_QuerySearchStateLoadSearchResultsSuccess(
      words: words == freezed ? _value.words : words as List<DictionaryWord>,
    ));
  }
}

class _$_QuerySearchStateLoadSearchResultsSuccess
    with DiagnosticableTreeMixin
    implements _QuerySearchStateLoadSearchResultsSuccess {
  const _$_QuerySearchStateLoadSearchResultsSuccess({this.words});

  @override
  final List<DictionaryWord> words;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.loadSearchResultsSuccess(words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QuerySearchState.loadSearchResultsSuccess'))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchStateLoadSearchResultsSuccess &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @override
  _$QuerySearchStateLoadSearchResultsSuccessCopyWith<
          _QuerySearchStateLoadSearchResultsSuccess>
      get copyWith => __$QuerySearchStateLoadSearchResultsSuccessCopyWithImpl<
          _QuerySearchStateLoadSearchResultsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadSearchResultsSuccess(words);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadSearchResultsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSearchResultsSuccess != null) {
      return loadSearchResultsSuccess(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchStateLoadSearchResultsSuccess
    implements QuerySearchState {
  const factory _QuerySearchStateLoadSearchResultsSuccess(
          {List<DictionaryWord> words}) =
      _$_QuerySearchStateLoadSearchResultsSuccess;

  List<DictionaryWord> get words;
  _$QuerySearchStateLoadSearchResultsSuccessCopyWith<
      _QuerySearchStateLoadSearchResultsSuccess> get copyWith;
}

abstract class _$QuerySearchStateLoadFailureCopyWith<$Res> {
  factory _$QuerySearchStateLoadFailureCopyWith(
          _QuerySearchStateLoadFailure value,
          $Res Function(_QuerySearchStateLoadFailure) then) =
      __$QuerySearchStateLoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$QuerySearchStateLoadFailureCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements _$QuerySearchStateLoadFailureCopyWith<$Res> {
  __$QuerySearchStateLoadFailureCopyWithImpl(
      _QuerySearchStateLoadFailure _value,
      $Res Function(_QuerySearchStateLoadFailure) _then)
      : super(_value, (v) => _then(v as _QuerySearchStateLoadFailure));

  @override
  _QuerySearchStateLoadFailure get _value =>
      super._value as _QuerySearchStateLoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_QuerySearchStateLoadFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_QuerySearchStateLoadFailure
    with DiagnosticableTreeMixin
    implements _QuerySearchStateLoadFailure {
  const _$_QuerySearchStateLoadFailure({this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.loadFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuerySearchState.loadFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchStateLoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$QuerySearchStateLoadFailureCopyWith<_QuerySearchStateLoadFailure>
      get copyWith => __$QuerySearchStateLoadFailureCopyWithImpl<
          _QuerySearchStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchStateLoadFailure implements QuerySearchState {
  const factory _QuerySearchStateLoadFailure({String message}) =
      _$_QuerySearchStateLoadFailure;

  String get message;
  _$QuerySearchStateLoadFailureCopyWith<_QuerySearchStateLoadFailure>
      get copyWith;
}

abstract class _$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
    $Res> {
  factory _$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWith(
          _QuerySearchStateNewWordAddedToRecentlySearchedWords value,
          $Res Function(_QuerySearchStateNewWordAddedToRecentlySearchedWords)
              then) =
      __$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<$Res>;
  $Res call({DictionaryWord addedWord});

  $DictionaryWordCopyWith<$Res> get addedWord;
}

class __$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements
        _$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWith<$Res> {
  __$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl(
      _QuerySearchStateNewWordAddedToRecentlySearchedWords _value,
      $Res Function(_QuerySearchStateNewWordAddedToRecentlySearchedWords) _then)
      : super(
            _value,
            (v) => _then(
                v as _QuerySearchStateNewWordAddedToRecentlySearchedWords));

  @override
  _QuerySearchStateNewWordAddedToRecentlySearchedWords get _value =>
      super._value as _QuerySearchStateNewWordAddedToRecentlySearchedWords;

  @override
  $Res call({
    Object addedWord = freezed,
  }) {
    return _then(_QuerySearchStateNewWordAddedToRecentlySearchedWords(
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

class _$_QuerySearchStateNewWordAddedToRecentlySearchedWords
    with DiagnosticableTreeMixin
    implements _QuerySearchStateNewWordAddedToRecentlySearchedWords {
  const _$_QuerySearchStateNewWordAddedToRecentlySearchedWords(
      {@required this.addedWord})
      : assert(addedWord != null);

  @override
  final DictionaryWord addedWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.newWordAddedToRecentlySearchedWords(addedWord: $addedWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QuerySearchState.newWordAddedToRecentlySearchedWords'))
      ..add(DiagnosticsProperty('addedWord', addedWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchStateNewWordAddedToRecentlySearchedWords &&
            (identical(other.addedWord, addedWord) ||
                const DeepCollectionEquality()
                    .equals(other.addedWord, addedWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addedWord);

  @override
  _$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
          _QuerySearchStateNewWordAddedToRecentlySearchedWords>
      get copyWith =>
          __$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWithImpl<
                  _QuerySearchStateNewWordAddedToRecentlySearchedWords>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return newWordAddedToRecentlySearchedWords(addedWord);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return newWordAddedToRecentlySearchedWords(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newWordAddedToRecentlySearchedWords != null) {
      return newWordAddedToRecentlySearchedWords(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchStateNewWordAddedToRecentlySearchedWords
    implements QuerySearchState {
  const factory _QuerySearchStateNewWordAddedToRecentlySearchedWords(
          {@required DictionaryWord addedWord}) =
      _$_QuerySearchStateNewWordAddedToRecentlySearchedWords;

  DictionaryWord get addedWord;
  _$QuerySearchStateNewWordAddedToRecentlySearchedWordsCopyWith<
      _QuerySearchStateNewWordAddedToRecentlySearchedWords> get copyWith;
}

abstract class _$QuerySearchLoadRecentlySearchedWordsSuccessCopyWith<$Res> {
  factory _$QuerySearchLoadRecentlySearchedWordsSuccessCopyWith(
          _QuerySearchLoadRecentlySearchedWordsSuccess value,
          $Res Function(_QuerySearchLoadRecentlySearchedWordsSuccess) then) =
      __$QuerySearchLoadRecentlySearchedWordsSuccessCopyWithImpl<$Res>;
  $Res call({List<DictionaryWord> recentlySearchedWords});
}

class __$QuerySearchLoadRecentlySearchedWordsSuccessCopyWithImpl<$Res>
    extends _$QuerySearchStateCopyWithImpl<$Res>
    implements _$QuerySearchLoadRecentlySearchedWordsSuccessCopyWith<$Res> {
  __$QuerySearchLoadRecentlySearchedWordsSuccessCopyWithImpl(
      _QuerySearchLoadRecentlySearchedWordsSuccess _value,
      $Res Function(_QuerySearchLoadRecentlySearchedWordsSuccess) _then)
      : super(_value,
            (v) => _then(v as _QuerySearchLoadRecentlySearchedWordsSuccess));

  @override
  _QuerySearchLoadRecentlySearchedWordsSuccess get _value =>
      super._value as _QuerySearchLoadRecentlySearchedWordsSuccess;

  @override
  $Res call({
    Object recentlySearchedWords = freezed,
  }) {
    return _then(_QuerySearchLoadRecentlySearchedWordsSuccess(
      recentlySearchedWords: recentlySearchedWords == freezed
          ? _value.recentlySearchedWords
          : recentlySearchedWords as List<DictionaryWord>,
    ));
  }
}

class _$_QuerySearchLoadRecentlySearchedWordsSuccess
    with DiagnosticableTreeMixin
    implements _QuerySearchLoadRecentlySearchedWordsSuccess {
  const _$_QuerySearchLoadRecentlySearchedWordsSuccess(
      {this.recentlySearchedWords});

  @override
  final List<DictionaryWord> recentlySearchedWords;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuerySearchState.loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords: $recentlySearchedWords)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'QuerySearchState.loadRecentlySearchedWordsResultsSuccess'))
      ..add(
          DiagnosticsProperty('recentlySearchedWords', recentlySearchedWords));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuerySearchLoadRecentlySearchedWordsSuccess &&
            (identical(other.recentlySearchedWords, recentlySearchedWords) ||
                const DeepCollectionEquality().equals(
                    other.recentlySearchedWords, recentlySearchedWords)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recentlySearchedWords);

  @override
  _$QuerySearchLoadRecentlySearchedWordsSuccessCopyWith<
          _QuerySearchLoadRecentlySearchedWordsSuccess>
      get copyWith =>
          __$QuerySearchLoadRecentlySearchedWordsSuccessCopyWithImpl<
              _QuerySearchLoadRecentlySearchedWordsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(List<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            List<DictionaryWord> recentlySearchedWords),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadRecentlySearchedWordsResultsSuccess(recentlySearchedWords);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(List<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        List<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_QuerySearchStateInitial value),
    @required Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _QuerySearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_QuerySearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _QuerySearchLoadRecentlySearchedWordsSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgreess != null);
    assert(loadSearchResultsSuccess != null);
    assert(loadFailure != null);
    assert(newWordAddedToRecentlySearchedWords != null);
    assert(loadRecentlySearchedWordsResultsSuccess != null);
    return loadRecentlySearchedWordsResultsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_QuerySearchStateInitial value),
    Result loadInProgreess(_QuerySearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _QuerySearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_QuerySearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _QuerySearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _QuerySearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadRecentlySearchedWordsResultsSuccess != null) {
      return loadRecentlySearchedWordsResultsSuccess(this);
    }
    return orElse();
  }
}

abstract class _QuerySearchLoadRecentlySearchedWordsSuccess
    implements QuerySearchState {
  const factory _QuerySearchLoadRecentlySearchedWordsSuccess(
          {List<DictionaryWord> recentlySearchedWords}) =
      _$_QuerySearchLoadRecentlySearchedWordsSuccess;

  List<DictionaryWord> get recentlySearchedWords;
  _$QuerySearchLoadRecentlySearchedWordsSuccessCopyWith<
      _QuerySearchLoadRecentlySearchedWordsSuccess> get copyWith;
}
