// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorited_words_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoritedWordsEventTearOff {
  const _$FavoritedWordsEventTearOff();

// ignore: unused_element
  _GetFavoritedWords getFavoritedWords() {
    return const _GetFavoritedWords();
  }

// ignore: unused_element
  _AddFavoritedWord addFavoritedWord(DictionaryWord word) {
    return _AddFavoritedWord(
      word,
    );
  }

// ignore: unused_element
  _DeleteFavoritedWord deleteFavoritedWord(DictionaryWord word) {
    return _DeleteFavoritedWord(
      word,
    );
  }
}

// ignore: unused_element
const $FavoritedWordsEvent = _$FavoritedWordsEventTearOff();

mixin _$FavoritedWordsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritedWords(),
    @required Result addFavoritedWord(DictionaryWord word),
    @required Result deleteFavoritedWord(DictionaryWord word),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritedWords(),
    Result addFavoritedWord(DictionaryWord word),
    Result deleteFavoritedWord(DictionaryWord word),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritedWords(_GetFavoritedWords value),
    @required Result addFavoritedWord(_AddFavoritedWord value),
    @required Result deleteFavoritedWord(_DeleteFavoritedWord value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritedWords(_GetFavoritedWords value),
    Result addFavoritedWord(_AddFavoritedWord value),
    Result deleteFavoritedWord(_DeleteFavoritedWord value),
    @required Result orElse(),
  });
}

abstract class $FavoritedWordsEventCopyWith<$Res> {
  factory $FavoritedWordsEventCopyWith(
          FavoritedWordsEvent value, $Res Function(FavoritedWordsEvent) then) =
      _$FavoritedWordsEventCopyWithImpl<$Res>;
}

class _$FavoritedWordsEventCopyWithImpl<$Res>
    implements $FavoritedWordsEventCopyWith<$Res> {
  _$FavoritedWordsEventCopyWithImpl(this._value, this._then);

  final FavoritedWordsEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritedWordsEvent) _then;
}

abstract class _$GetFavoritedWordsCopyWith<$Res> {
  factory _$GetFavoritedWordsCopyWith(
          _GetFavoritedWords value, $Res Function(_GetFavoritedWords) then) =
      __$GetFavoritedWordsCopyWithImpl<$Res>;
}

class __$GetFavoritedWordsCopyWithImpl<$Res>
    extends _$FavoritedWordsEventCopyWithImpl<$Res>
    implements _$GetFavoritedWordsCopyWith<$Res> {
  __$GetFavoritedWordsCopyWithImpl(
      _GetFavoritedWords _value, $Res Function(_GetFavoritedWords) _then)
      : super(_value, (v) => _then(v as _GetFavoritedWords));

  @override
  _GetFavoritedWords get _value => super._value as _GetFavoritedWords;
}

class _$_GetFavoritedWords implements _GetFavoritedWords {
  const _$_GetFavoritedWords();

  @override
  String toString() {
    return 'FavoritedWordsEvent.getFavoritedWords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFavoritedWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritedWords(),
    @required Result addFavoritedWord(DictionaryWord word),
    @required Result deleteFavoritedWord(DictionaryWord word),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return getFavoritedWords();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritedWords(),
    Result addFavoritedWord(DictionaryWord word),
    Result deleteFavoritedWord(DictionaryWord word),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavoritedWords != null) {
      return getFavoritedWords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritedWords(_GetFavoritedWords value),
    @required Result addFavoritedWord(_AddFavoritedWord value),
    @required Result deleteFavoritedWord(_DeleteFavoritedWord value),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return getFavoritedWords(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritedWords(_GetFavoritedWords value),
    Result addFavoritedWord(_AddFavoritedWord value),
    Result deleteFavoritedWord(_DeleteFavoritedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavoritedWords != null) {
      return getFavoritedWords(this);
    }
    return orElse();
  }
}

abstract class _GetFavoritedWords implements FavoritedWordsEvent {
  const factory _GetFavoritedWords() = _$_GetFavoritedWords;
}

abstract class _$AddFavoritedWordCopyWith<$Res> {
  factory _$AddFavoritedWordCopyWith(
          _AddFavoritedWord value, $Res Function(_AddFavoritedWord) then) =
      __$AddFavoritedWordCopyWithImpl<$Res>;
  $Res call({DictionaryWord word});

  $DictionaryWordCopyWith<$Res> get word;
}

class __$AddFavoritedWordCopyWithImpl<$Res>
    extends _$FavoritedWordsEventCopyWithImpl<$Res>
    implements _$AddFavoritedWordCopyWith<$Res> {
  __$AddFavoritedWordCopyWithImpl(
      _AddFavoritedWord _value, $Res Function(_AddFavoritedWord) _then)
      : super(_value, (v) => _then(v as _AddFavoritedWord));

  @override
  _AddFavoritedWord get _value => super._value as _AddFavoritedWord;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(_AddFavoritedWord(
      word == freezed ? _value.word : word as DictionaryWord,
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

class _$_AddFavoritedWord implements _AddFavoritedWord {
  const _$_AddFavoritedWord(this.word) : assert(word != null);

  @override
  final DictionaryWord word;

  @override
  String toString() {
    return 'FavoritedWordsEvent.addFavoritedWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFavoritedWord &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @override
  _$AddFavoritedWordCopyWith<_AddFavoritedWord> get copyWith =>
      __$AddFavoritedWordCopyWithImpl<_AddFavoritedWord>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritedWords(),
    @required Result addFavoritedWord(DictionaryWord word),
    @required Result deleteFavoritedWord(DictionaryWord word),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return addFavoritedWord(word);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritedWords(),
    Result addFavoritedWord(DictionaryWord word),
    Result deleteFavoritedWord(DictionaryWord word),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFavoritedWord != null) {
      return addFavoritedWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritedWords(_GetFavoritedWords value),
    @required Result addFavoritedWord(_AddFavoritedWord value),
    @required Result deleteFavoritedWord(_DeleteFavoritedWord value),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return addFavoritedWord(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritedWords(_GetFavoritedWords value),
    Result addFavoritedWord(_AddFavoritedWord value),
    Result deleteFavoritedWord(_DeleteFavoritedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addFavoritedWord != null) {
      return addFavoritedWord(this);
    }
    return orElse();
  }
}

abstract class _AddFavoritedWord implements FavoritedWordsEvent {
  const factory _AddFavoritedWord(DictionaryWord word) = _$_AddFavoritedWord;

  DictionaryWord get word;
  _$AddFavoritedWordCopyWith<_AddFavoritedWord> get copyWith;
}

abstract class _$DeleteFavoritedWordCopyWith<$Res> {
  factory _$DeleteFavoritedWordCopyWith(_DeleteFavoritedWord value,
          $Res Function(_DeleteFavoritedWord) then) =
      __$DeleteFavoritedWordCopyWithImpl<$Res>;
  $Res call({DictionaryWord word});

  $DictionaryWordCopyWith<$Res> get word;
}

class __$DeleteFavoritedWordCopyWithImpl<$Res>
    extends _$FavoritedWordsEventCopyWithImpl<$Res>
    implements _$DeleteFavoritedWordCopyWith<$Res> {
  __$DeleteFavoritedWordCopyWithImpl(
      _DeleteFavoritedWord _value, $Res Function(_DeleteFavoritedWord) _then)
      : super(_value, (v) => _then(v as _DeleteFavoritedWord));

  @override
  _DeleteFavoritedWord get _value => super._value as _DeleteFavoritedWord;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(_DeleteFavoritedWord(
      word == freezed ? _value.word : word as DictionaryWord,
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

class _$_DeleteFavoritedWord implements _DeleteFavoritedWord {
  const _$_DeleteFavoritedWord(this.word) : assert(word != null);

  @override
  final DictionaryWord word;

  @override
  String toString() {
    return 'FavoritedWordsEvent.deleteFavoritedWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFavoritedWord &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @override
  _$DeleteFavoritedWordCopyWith<_DeleteFavoritedWord> get copyWith =>
      __$DeleteFavoritedWordCopyWithImpl<_DeleteFavoritedWord>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavoritedWords(),
    @required Result addFavoritedWord(DictionaryWord word),
    @required Result deleteFavoritedWord(DictionaryWord word),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return deleteFavoritedWord(word);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavoritedWords(),
    Result addFavoritedWord(DictionaryWord word),
    Result deleteFavoritedWord(DictionaryWord word),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFavoritedWord != null) {
      return deleteFavoritedWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavoritedWords(_GetFavoritedWords value),
    @required Result addFavoritedWord(_AddFavoritedWord value),
    @required Result deleteFavoritedWord(_DeleteFavoritedWord value),
  }) {
    assert(getFavoritedWords != null);
    assert(addFavoritedWord != null);
    assert(deleteFavoritedWord != null);
    return deleteFavoritedWord(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavoritedWords(_GetFavoritedWords value),
    Result addFavoritedWord(_AddFavoritedWord value),
    Result deleteFavoritedWord(_DeleteFavoritedWord value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFavoritedWord != null) {
      return deleteFavoritedWord(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavoritedWord implements FavoritedWordsEvent {
  const factory _DeleteFavoritedWord(DictionaryWord word) =
      _$_DeleteFavoritedWord;

  DictionaryWord get word;
  _$DeleteFavoritedWordCopyWith<_DeleteFavoritedWord> get copyWith;
}

class _$FavoritedWordsStateTearOff {
  const _$FavoritedWordsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadFavoritedWordsSuccess loadFavoritedWordsSuccess(
      {@required KtList<DictionaryWord> words}) {
    return _LoadFavoritedWordsSuccess(
      words: words,
    );
  }

// ignore: unused_element
  _FavoritedWordsStateLoadFailure loadFailure({@required String message}) {
    return _FavoritedWordsStateLoadFailure(
      message: message,
    );
  }

// ignore: unused_element
  _FavoritedWordsStateActionFailure actionFailure({@required String message}) {
    return _FavoritedWordsStateActionFailure(
      message: message,
    );
  }

// ignore: unused_element
  _FavoritedWordsStateDeleteSuccess deleteSuccess() {
    return const _FavoritedWordsStateDeleteSuccess();
  }

// ignore: unused_element
  _FavoritedWordsStateAddSuccess addSuccess() {
    return const _FavoritedWordsStateAddSuccess();
  }
}

// ignore: unused_element
const $FavoritedWordsState = _$FavoritedWordsStateTearOff();

mixin _$FavoritedWordsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  });
}

abstract class $FavoritedWordsStateCopyWith<$Res> {
  factory $FavoritedWordsStateCopyWith(
          FavoritedWordsState value, $Res Function(FavoritedWordsState) then) =
      _$FavoritedWordsStateCopyWithImpl<$Res>;
}

class _$FavoritedWordsStateCopyWithImpl<$Res>
    implements $FavoritedWordsStateCopyWith<$Res> {
  _$FavoritedWordsStateCopyWithImpl(this._value, this._then);

  final FavoritedWordsState _value;
  // ignore: unused_field
  final $Res Function(FavoritedWordsState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavoritedWordsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritedWordsState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'FavoritedWordsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements FavoritedWordsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadFavoritedWordsSuccessCopyWith<$Res> {
  factory _$LoadFavoritedWordsSuccessCopyWith(_LoadFavoritedWordsSuccess value,
          $Res Function(_LoadFavoritedWordsSuccess) then) =
      __$LoadFavoritedWordsSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DictionaryWord> words});
}

class __$LoadFavoritedWordsSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$LoadFavoritedWordsSuccessCopyWith<$Res> {
  __$LoadFavoritedWordsSuccessCopyWithImpl(_LoadFavoritedWordsSuccess _value,
      $Res Function(_LoadFavoritedWordsSuccess) _then)
      : super(_value, (v) => _then(v as _LoadFavoritedWordsSuccess));

  @override
  _LoadFavoritedWordsSuccess get _value =>
      super._value as _LoadFavoritedWordsSuccess;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(_LoadFavoritedWordsSuccess(
      words: words == freezed ? _value.words : words as KtList<DictionaryWord>,
    ));
  }
}

class _$_LoadFavoritedWordsSuccess implements _LoadFavoritedWordsSuccess {
  const _$_LoadFavoritedWordsSuccess({@required this.words})
      : assert(words != null);

  @override
  final KtList<DictionaryWord> words;

  @override
  String toString() {
    return 'FavoritedWordsState.loadFavoritedWordsSuccess(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFavoritedWordsSuccess &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @override
  _$LoadFavoritedWordsSuccessCopyWith<_LoadFavoritedWordsSuccess>
      get copyWith =>
          __$LoadFavoritedWordsSuccessCopyWithImpl<_LoadFavoritedWordsSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadFavoritedWordsSuccess(words);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFavoritedWordsSuccess != null) {
      return loadFavoritedWordsSuccess(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadFavoritedWordsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFavoritedWordsSuccess != null) {
      return loadFavoritedWordsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoritedWordsSuccess implements FavoritedWordsState {
  const factory _LoadFavoritedWordsSuccess(
      {@required KtList<DictionaryWord> words}) = _$_LoadFavoritedWordsSuccess;

  KtList<DictionaryWord> get words;
  _$LoadFavoritedWordsSuccessCopyWith<_LoadFavoritedWordsSuccess> get copyWith;
}

abstract class _$FavoritedWordsStateLoadFailureCopyWith<$Res> {
  factory _$FavoritedWordsStateLoadFailureCopyWith(
          _FavoritedWordsStateLoadFailure value,
          $Res Function(_FavoritedWordsStateLoadFailure) then) =
      __$FavoritedWordsStateLoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FavoritedWordsStateLoadFailureCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$FavoritedWordsStateLoadFailureCopyWith<$Res> {
  __$FavoritedWordsStateLoadFailureCopyWithImpl(
      _FavoritedWordsStateLoadFailure _value,
      $Res Function(_FavoritedWordsStateLoadFailure) _then)
      : super(_value, (v) => _then(v as _FavoritedWordsStateLoadFailure));

  @override
  _FavoritedWordsStateLoadFailure get _value =>
      super._value as _FavoritedWordsStateLoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FavoritedWordsStateLoadFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_FavoritedWordsStateLoadFailure
    implements _FavoritedWordsStateLoadFailure {
  const _$_FavoritedWordsStateLoadFailure({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritedWordsState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritedWordsStateLoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FavoritedWordsStateLoadFailureCopyWith<_FavoritedWordsStateLoadFailure>
      get copyWith => __$FavoritedWordsStateLoadFailureCopyWithImpl<
          _FavoritedWordsStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _FavoritedWordsStateLoadFailure implements FavoritedWordsState {
  const factory _FavoritedWordsStateLoadFailure({@required String message}) =
      _$_FavoritedWordsStateLoadFailure;

  String get message;
  _$FavoritedWordsStateLoadFailureCopyWith<_FavoritedWordsStateLoadFailure>
      get copyWith;
}

abstract class _$FavoritedWordsStateActionFailureCopyWith<$Res> {
  factory _$FavoritedWordsStateActionFailureCopyWith(
          _FavoritedWordsStateActionFailure value,
          $Res Function(_FavoritedWordsStateActionFailure) then) =
      __$FavoritedWordsStateActionFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FavoritedWordsStateActionFailureCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$FavoritedWordsStateActionFailureCopyWith<$Res> {
  __$FavoritedWordsStateActionFailureCopyWithImpl(
      _FavoritedWordsStateActionFailure _value,
      $Res Function(_FavoritedWordsStateActionFailure) _then)
      : super(_value, (v) => _then(v as _FavoritedWordsStateActionFailure));

  @override
  _FavoritedWordsStateActionFailure get _value =>
      super._value as _FavoritedWordsStateActionFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FavoritedWordsStateActionFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_FavoritedWordsStateActionFailure
    implements _FavoritedWordsStateActionFailure {
  const _$_FavoritedWordsStateActionFailure({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritedWordsState.actionFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritedWordsStateActionFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FavoritedWordsStateActionFailureCopyWith<_FavoritedWordsStateActionFailure>
      get copyWith => __$FavoritedWordsStateActionFailureCopyWithImpl<
          _FavoritedWordsStateActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return actionFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _FavoritedWordsStateActionFailure
    implements FavoritedWordsState {
  const factory _FavoritedWordsStateActionFailure({@required String message}) =
      _$_FavoritedWordsStateActionFailure;

  String get message;
  _$FavoritedWordsStateActionFailureCopyWith<_FavoritedWordsStateActionFailure>
      get copyWith;
}

abstract class _$FavoritedWordsStateDeleteSuccessCopyWith<$Res> {
  factory _$FavoritedWordsStateDeleteSuccessCopyWith(
          _FavoritedWordsStateDeleteSuccess value,
          $Res Function(_FavoritedWordsStateDeleteSuccess) then) =
      __$FavoritedWordsStateDeleteSuccessCopyWithImpl<$Res>;
}

class __$FavoritedWordsStateDeleteSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$FavoritedWordsStateDeleteSuccessCopyWith<$Res> {
  __$FavoritedWordsStateDeleteSuccessCopyWithImpl(
      _FavoritedWordsStateDeleteSuccess _value,
      $Res Function(_FavoritedWordsStateDeleteSuccess) _then)
      : super(_value, (v) => _then(v as _FavoritedWordsStateDeleteSuccess));

  @override
  _FavoritedWordsStateDeleteSuccess get _value =>
      super._value as _FavoritedWordsStateDeleteSuccess;
}

class _$_FavoritedWordsStateDeleteSuccess
    implements _FavoritedWordsStateDeleteSuccess {
  const _$_FavoritedWordsStateDeleteSuccess();

  @override
  String toString() {
    return 'FavoritedWordsState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritedWordsStateDeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _FavoritedWordsStateDeleteSuccess
    implements FavoritedWordsState {
  const factory _FavoritedWordsStateDeleteSuccess() =
      _$_FavoritedWordsStateDeleteSuccess;
}

abstract class _$FavoritedWordsStateAddSuccessCopyWith<$Res> {
  factory _$FavoritedWordsStateAddSuccessCopyWith(
          _FavoritedWordsStateAddSuccess value,
          $Res Function(_FavoritedWordsStateAddSuccess) then) =
      __$FavoritedWordsStateAddSuccessCopyWithImpl<$Res>;
}

class __$FavoritedWordsStateAddSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsStateCopyWithImpl<$Res>
    implements _$FavoritedWordsStateAddSuccessCopyWith<$Res> {
  __$FavoritedWordsStateAddSuccessCopyWithImpl(
      _FavoritedWordsStateAddSuccess _value,
      $Res Function(_FavoritedWordsStateAddSuccess) _then)
      : super(_value, (v) => _then(v as _FavoritedWordsStateAddSuccess));

  @override
  _FavoritedWordsStateAddSuccess get _value =>
      super._value as _FavoritedWordsStateAddSuccess;
}

class _$_FavoritedWordsStateAddSuccess
    implements _FavoritedWordsStateAddSuccess {
  const _$_FavoritedWordsStateAddSuccess();

  @override
  String toString() {
    return 'FavoritedWordsState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FavoritedWordsStateAddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
    @required Result actionFailure(String message),
    @required Result deleteSuccess(),
    @required Result addSuccess(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    Result actionFailure(String message),
    Result deleteSuccess(),
    Result addSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    @required Result loadFailure(_FavoritedWordsStateLoadFailure value),
    @required Result actionFailure(_FavoritedWordsStateActionFailure value),
    @required Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    @required Result addSuccess(_FavoritedWordsStateAddSuccess value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    assert(actionFailure != null);
    assert(deleteSuccess != null);
    assert(addSuccess != null);
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadFavoritedWordsSuccess(_LoadFavoritedWordsSuccess value),
    Result loadFailure(_FavoritedWordsStateLoadFailure value),
    Result actionFailure(_FavoritedWordsStateActionFailure value),
    Result deleteSuccess(_FavoritedWordsStateDeleteSuccess value),
    Result addSuccess(_FavoritedWordsStateAddSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _FavoritedWordsStateAddSuccess implements FavoritedWordsState {
  const factory _FavoritedWordsStateAddSuccess() =
      _$_FavoritedWordsStateAddSuccess;
}
