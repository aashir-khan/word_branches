// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dictionary_word_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DictionaryWordSearchStateTearOff {
  const _$DictionaryWordSearchStateTearOff();

  _DictionaryWordSearchStateInitial initial() {
    return const _DictionaryWordSearchStateInitial();
  }

  _DictionaryWordSearchStateLoadInProgress loadInProgreess() {
    return const _DictionaryWordSearchStateLoadInProgress();
  }

  _DictionaryWordSearchStateLoadSearchResultsSuccess loadSearchResultsSuccess(
      {KtList<DictionaryWord> words}) {
    return _DictionaryWordSearchStateLoadSearchResultsSuccess(
      words: words,
    );
  }

  _DictionaryWordSearchStateLoadFailure loadFailure({String message}) {
    return _DictionaryWordSearchStateLoadFailure(
      message: message,
    );
  }

  _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
      newWordAddedToRecentlySearchedWords(
          {@required DictionaryWord addedWord}) {
    return _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords(
      addedWord: addedWord,
    );
  }

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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgreess(),
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
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
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
    return 'DictionaryWordSearchState.loadInProgreess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DictionaryWordSearchState.loadInProgreess'));
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    Result loadRecentlySearchedWordsResultsSuccess(
        KtList<DictionaryWord> recentlySearchedWords),
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
    @required Result initial(_DictionaryWordSearchStateInitial value),
    @required
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
    Result loadRecentlySearchedWordsResultsSuccess(
        _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgreess != null) {
      return loadInProgreess(this);
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
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
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
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
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
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
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
    @required Result loadInProgreess(),
    @required Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required
        Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            KtList<DictionaryWord> recentlySearchedWords),
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
    Result loadSearchResultsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result newWordAddedToRecentlySearchedWords(DictionaryWord addedWord),
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
        Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    @required
        Result loadSearchResultsSuccess(
            _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    @required Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    @required
        Result newWordAddedToRecentlySearchedWords(
            _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords
                value),
    @required
        Result loadRecentlySearchedWordsResultsSuccess(
            _DictionaryWordSearchLoadRecentlySearchedWordsSuccess value),
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
    Result initial(_DictionaryWordSearchStateInitial value),
    Result loadInProgreess(_DictionaryWordSearchStateLoadInProgress value),
    Result loadSearchResultsSuccess(
        _DictionaryWordSearchStateLoadSearchResultsSuccess value),
    Result loadFailure(_DictionaryWordSearchStateLoadFailure value),
    Result newWordAddedToRecentlySearchedWords(
        _DictionaryWordSearchStateNewWordAddedToRecentlySearchedWords value),
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
