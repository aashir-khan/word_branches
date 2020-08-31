// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dictionary_word_entries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DictionaryWordEntriesEventTearOff {
  const _$DictionaryWordEntriesEventTearOff();

// ignore: unused_element
  _GetWordEntries getWordEntries(DictionaryWord word) {
    return _GetWordEntries(
      word,
    );
  }
}

// ignore: unused_element
const $DictionaryWordEntriesEvent = _$DictionaryWordEntriesEventTearOff();

mixin _$DictionaryWordEntriesEvent {
  DictionaryWord get word;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getWordEntries(DictionaryWord word),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getWordEntries(DictionaryWord word),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getWordEntries(_GetWordEntries value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getWordEntries(_GetWordEntries value),
    @required Result orElse(),
  });

  $DictionaryWordEntriesEventCopyWith<DictionaryWordEntriesEvent> get copyWith;
}

abstract class $DictionaryWordEntriesEventCopyWith<$Res> {
  factory $DictionaryWordEntriesEventCopyWith(DictionaryWordEntriesEvent value,
          $Res Function(DictionaryWordEntriesEvent) then) =
      _$DictionaryWordEntriesEventCopyWithImpl<$Res>;
  $Res call({DictionaryWord word});

  $DictionaryWordCopyWith<$Res> get word;
}

class _$DictionaryWordEntriesEventCopyWithImpl<$Res>
    implements $DictionaryWordEntriesEventCopyWith<$Res> {
  _$DictionaryWordEntriesEventCopyWithImpl(this._value, this._then);

  final DictionaryWordEntriesEvent _value;
  // ignore: unused_field
  final $Res Function(DictionaryWordEntriesEvent) _then;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed ? _value.word : word as DictionaryWord,
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

abstract class _$GetWordEntriesCopyWith<$Res>
    implements $DictionaryWordEntriesEventCopyWith<$Res> {
  factory _$GetWordEntriesCopyWith(
          _GetWordEntries value, $Res Function(_GetWordEntries) then) =
      __$GetWordEntriesCopyWithImpl<$Res>;
  @override
  $Res call({DictionaryWord word});

  @override
  $DictionaryWordCopyWith<$Res> get word;
}

class __$GetWordEntriesCopyWithImpl<$Res>
    extends _$DictionaryWordEntriesEventCopyWithImpl<$Res>
    implements _$GetWordEntriesCopyWith<$Res> {
  __$GetWordEntriesCopyWithImpl(
      _GetWordEntries _value, $Res Function(_GetWordEntries) _then)
      : super(_value, (v) => _then(v as _GetWordEntries));

  @override
  _GetWordEntries get _value => super._value as _GetWordEntries;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(_GetWordEntries(
      word == freezed ? _value.word : word as DictionaryWord,
    ));
  }
}

class _$_GetWordEntries implements _GetWordEntries {
  const _$_GetWordEntries(this.word) : assert(word != null);

  @override
  final DictionaryWord word;

  @override
  String toString() {
    return 'DictionaryWordEntriesEvent.getWordEntries(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetWordEntries &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @override
  _$GetWordEntriesCopyWith<_GetWordEntries> get copyWith =>
      __$GetWordEntriesCopyWithImpl<_GetWordEntries>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getWordEntries(DictionaryWord word),
  }) {
    assert(getWordEntries != null);
    return getWordEntries(word);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getWordEntries(DictionaryWord word),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getWordEntries != null) {
      return getWordEntries(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getWordEntries(_GetWordEntries value),
  }) {
    assert(getWordEntries != null);
    return getWordEntries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getWordEntries(_GetWordEntries value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getWordEntries != null) {
      return getWordEntries(this);
    }
    return orElse();
  }
}

abstract class _GetWordEntries implements DictionaryWordEntriesEvent {
  const factory _GetWordEntries(DictionaryWord word) = _$_GetWordEntries;

  @override
  DictionaryWord get word;
  @override
  _$GetWordEntriesCopyWith<_GetWordEntries> get copyWith;
}

class _$DictionaryWordEntriesStateTearOff {
  const _$DictionaryWordEntriesStateTearOff();

// ignore: unused_element
  _DictionaryWordEntriesStateInitial initial() {
    return const _DictionaryWordEntriesStateInitial();
  }

// ignore: unused_element
  _DictionaryWordEntriesStateLoadInProgress loadInProgress() {
    return const _DictionaryWordEntriesStateLoadInProgress();
  }

// ignore: unused_element
  _DictionaryWordEntriesStateLoadEntriesSuccess loadEntriesSuccess(
      {KtList<HeadwordEntry> results, bool isLoadedAll}) {
    return _DictionaryWordEntriesStateLoadEntriesSuccess(
      results: results,
      isLoadedAll: isLoadedAll,
    );
  }

// ignore: unused_element
  _DictionaryWordEntriesStateLoadFailure loadFailure({String message}) {
    return _DictionaryWordEntriesStateLoadFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $DictionaryWordEntriesState = _$DictionaryWordEntriesStateTearOff();

mixin _$DictionaryWordEntriesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadEntriesSuccess(
            KtList<HeadwordEntry> results, bool isLoadedAll),
    @required Result loadFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadEntriesSuccess(KtList<HeadwordEntry> results, bool isLoadedAll),
    Result loadFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordEntriesStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    @required
        Result loadEntriesSuccess(
            _DictionaryWordEntriesStateLoadEntriesSuccess value),
    @required Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordEntriesStateInitial value),
    Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    Result loadEntriesSuccess(
        _DictionaryWordEntriesStateLoadEntriesSuccess value),
    Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $DictionaryWordEntriesStateCopyWith<$Res> {
  factory $DictionaryWordEntriesStateCopyWith(DictionaryWordEntriesState value,
          $Res Function(DictionaryWordEntriesState) then) =
      _$DictionaryWordEntriesStateCopyWithImpl<$Res>;
}

class _$DictionaryWordEntriesStateCopyWithImpl<$Res>
    implements $DictionaryWordEntriesStateCopyWith<$Res> {
  _$DictionaryWordEntriesStateCopyWithImpl(this._value, this._then);

  final DictionaryWordEntriesState _value;
  // ignore: unused_field
  final $Res Function(DictionaryWordEntriesState) _then;
}

abstract class _$DictionaryWordEntriesStateInitialCopyWith<$Res> {
  factory _$DictionaryWordEntriesStateInitialCopyWith(
          _DictionaryWordEntriesStateInitial value,
          $Res Function(_DictionaryWordEntriesStateInitial) then) =
      __$DictionaryWordEntriesStateInitialCopyWithImpl<$Res>;
}

class __$DictionaryWordEntriesStateInitialCopyWithImpl<$Res>
    extends _$DictionaryWordEntriesStateCopyWithImpl<$Res>
    implements _$DictionaryWordEntriesStateInitialCopyWith<$Res> {
  __$DictionaryWordEntriesStateInitialCopyWithImpl(
      _DictionaryWordEntriesStateInitial _value,
      $Res Function(_DictionaryWordEntriesStateInitial) _then)
      : super(_value, (v) => _then(v as _DictionaryWordEntriesStateInitial));

  @override
  _DictionaryWordEntriesStateInitial get _value =>
      super._value as _DictionaryWordEntriesStateInitial;
}

class _$_DictionaryWordEntriesStateInitial
    implements _DictionaryWordEntriesStateInitial {
  const _$_DictionaryWordEntriesStateInitial();

  @override
  String toString() {
    return 'DictionaryWordEntriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordEntriesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadEntriesSuccess(
            KtList<HeadwordEntry> results, bool isLoadedAll),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadEntriesSuccess(KtList<HeadwordEntry> results, bool isLoadedAll),
    Result loadFailure(String message),
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
    @required Result initial(_DictionaryWordEntriesStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    @required
        Result loadEntriesSuccess(
            _DictionaryWordEntriesStateLoadEntriesSuccess value),
    @required Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordEntriesStateInitial value),
    Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    Result loadEntriesSuccess(
        _DictionaryWordEntriesStateLoadEntriesSuccess value),
    Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordEntriesStateInitial
    implements DictionaryWordEntriesState {
  const factory _DictionaryWordEntriesStateInitial() =
      _$_DictionaryWordEntriesStateInitial;
}

abstract class _$DictionaryWordEntriesStateLoadInProgressCopyWith<$Res> {
  factory _$DictionaryWordEntriesStateLoadInProgressCopyWith(
          _DictionaryWordEntriesStateLoadInProgress value,
          $Res Function(_DictionaryWordEntriesStateLoadInProgress) then) =
      __$DictionaryWordEntriesStateLoadInProgressCopyWithImpl<$Res>;
}

class __$DictionaryWordEntriesStateLoadInProgressCopyWithImpl<$Res>
    extends _$DictionaryWordEntriesStateCopyWithImpl<$Res>
    implements _$DictionaryWordEntriesStateLoadInProgressCopyWith<$Res> {
  __$DictionaryWordEntriesStateLoadInProgressCopyWithImpl(
      _DictionaryWordEntriesStateLoadInProgress _value,
      $Res Function(_DictionaryWordEntriesStateLoadInProgress) _then)
      : super(_value,
            (v) => _then(v as _DictionaryWordEntriesStateLoadInProgress));

  @override
  _DictionaryWordEntriesStateLoadInProgress get _value =>
      super._value as _DictionaryWordEntriesStateLoadInProgress;
}

class _$_DictionaryWordEntriesStateLoadInProgress
    implements _DictionaryWordEntriesStateLoadInProgress {
  const _$_DictionaryWordEntriesStateLoadInProgress();

  @override
  String toString() {
    return 'DictionaryWordEntriesState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordEntriesStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadEntriesSuccess(
            KtList<HeadwordEntry> results, bool isLoadedAll),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadEntriesSuccess(KtList<HeadwordEntry> results, bool isLoadedAll),
    Result loadFailure(String message),
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
    @required Result initial(_DictionaryWordEntriesStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    @required
        Result loadEntriesSuccess(
            _DictionaryWordEntriesStateLoadEntriesSuccess value),
    @required Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordEntriesStateInitial value),
    Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    Result loadEntriesSuccess(
        _DictionaryWordEntriesStateLoadEntriesSuccess value),
    Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordEntriesStateLoadInProgress
    implements DictionaryWordEntriesState {
  const factory _DictionaryWordEntriesStateLoadInProgress() =
      _$_DictionaryWordEntriesStateLoadInProgress;
}

abstract class _$DictionaryWordEntriesStateLoadEntriesSuccessCopyWith<$Res> {
  factory _$DictionaryWordEntriesStateLoadEntriesSuccessCopyWith(
          _DictionaryWordEntriesStateLoadEntriesSuccess value,
          $Res Function(_DictionaryWordEntriesStateLoadEntriesSuccess) then) =
      __$DictionaryWordEntriesStateLoadEntriesSuccessCopyWithImpl<$Res>;
  $Res call({KtList<HeadwordEntry> results, bool isLoadedAll});
}

class __$DictionaryWordEntriesStateLoadEntriesSuccessCopyWithImpl<$Res>
    extends _$DictionaryWordEntriesStateCopyWithImpl<$Res>
    implements _$DictionaryWordEntriesStateLoadEntriesSuccessCopyWith<$Res> {
  __$DictionaryWordEntriesStateLoadEntriesSuccessCopyWithImpl(
      _DictionaryWordEntriesStateLoadEntriesSuccess _value,
      $Res Function(_DictionaryWordEntriesStateLoadEntriesSuccess) _then)
      : super(_value,
            (v) => _then(v as _DictionaryWordEntriesStateLoadEntriesSuccess));

  @override
  _DictionaryWordEntriesStateLoadEntriesSuccess get _value =>
      super._value as _DictionaryWordEntriesStateLoadEntriesSuccess;

  @override
  $Res call({
    Object results = freezed,
    Object isLoadedAll = freezed,
  }) {
    return _then(_DictionaryWordEntriesStateLoadEntriesSuccess(
      results: results == freezed
          ? _value.results
          : results as KtList<HeadwordEntry>,
      isLoadedAll:
          isLoadedAll == freezed ? _value.isLoadedAll : isLoadedAll as bool,
    ));
  }
}

class _$_DictionaryWordEntriesStateLoadEntriesSuccess
    implements _DictionaryWordEntriesStateLoadEntriesSuccess {
  const _$_DictionaryWordEntriesStateLoadEntriesSuccess(
      {this.results, this.isLoadedAll});

  @override
  final KtList<HeadwordEntry> results;
  @override
  final bool isLoadedAll;

  @override
  String toString() {
    return 'DictionaryWordEntriesState.loadEntriesSuccess(results: $results, isLoadedAll: $isLoadedAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordEntriesStateLoadEntriesSuccess &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.isLoadedAll, isLoadedAll) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadedAll, isLoadedAll)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(isLoadedAll);

  @override
  _$DictionaryWordEntriesStateLoadEntriesSuccessCopyWith<
          _DictionaryWordEntriesStateLoadEntriesSuccess>
      get copyWith =>
          __$DictionaryWordEntriesStateLoadEntriesSuccessCopyWithImpl<
              _DictionaryWordEntriesStateLoadEntriesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadEntriesSuccess(
            KtList<HeadwordEntry> results, bool isLoadedAll),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadEntriesSuccess(results, isLoadedAll);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadEntriesSuccess(KtList<HeadwordEntry> results, bool isLoadedAll),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadEntriesSuccess != null) {
      return loadEntriesSuccess(results, isLoadedAll);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_DictionaryWordEntriesStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    @required
        Result loadEntriesSuccess(
            _DictionaryWordEntriesStateLoadEntriesSuccess value),
    @required Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadEntriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordEntriesStateInitial value),
    Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    Result loadEntriesSuccess(
        _DictionaryWordEntriesStateLoadEntriesSuccess value),
    Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadEntriesSuccess != null) {
      return loadEntriesSuccess(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordEntriesStateLoadEntriesSuccess
    implements DictionaryWordEntriesState {
  const factory _DictionaryWordEntriesStateLoadEntriesSuccess(
      {KtList<HeadwordEntry> results,
      bool isLoadedAll}) = _$_DictionaryWordEntriesStateLoadEntriesSuccess;

  KtList<HeadwordEntry> get results;
  bool get isLoadedAll;
  _$DictionaryWordEntriesStateLoadEntriesSuccessCopyWith<
      _DictionaryWordEntriesStateLoadEntriesSuccess> get copyWith;
}

abstract class _$DictionaryWordEntriesStateLoadFailureCopyWith<$Res> {
  factory _$DictionaryWordEntriesStateLoadFailureCopyWith(
          _DictionaryWordEntriesStateLoadFailure value,
          $Res Function(_DictionaryWordEntriesStateLoadFailure) then) =
      __$DictionaryWordEntriesStateLoadFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$DictionaryWordEntriesStateLoadFailureCopyWithImpl<$Res>
    extends _$DictionaryWordEntriesStateCopyWithImpl<$Res>
    implements _$DictionaryWordEntriesStateLoadFailureCopyWith<$Res> {
  __$DictionaryWordEntriesStateLoadFailureCopyWithImpl(
      _DictionaryWordEntriesStateLoadFailure _value,
      $Res Function(_DictionaryWordEntriesStateLoadFailure) _then)
      : super(
            _value, (v) => _then(v as _DictionaryWordEntriesStateLoadFailure));

  @override
  _DictionaryWordEntriesStateLoadFailure get _value =>
      super._value as _DictionaryWordEntriesStateLoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_DictionaryWordEntriesStateLoadFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_DictionaryWordEntriesStateLoadFailure
    implements _DictionaryWordEntriesStateLoadFailure {
  const _$_DictionaryWordEntriesStateLoadFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DictionaryWordEntriesState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWordEntriesStateLoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$DictionaryWordEntriesStateLoadFailureCopyWith<
          _DictionaryWordEntriesStateLoadFailure>
      get copyWith => __$DictionaryWordEntriesStateLoadFailureCopyWithImpl<
          _DictionaryWordEntriesStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required
        Result loadEntriesSuccess(
            KtList<HeadwordEntry> results, bool isLoadedAll),
    @required Result loadFailure(String message),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadEntriesSuccess(KtList<HeadwordEntry> results, bool isLoadedAll),
    Result loadFailure(String message),
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
    @required Result initial(_DictionaryWordEntriesStateInitial value),
    @required
        Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    @required
        Result loadEntriesSuccess(
            _DictionaryWordEntriesStateLoadEntriesSuccess value),
    @required Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadEntriesSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_DictionaryWordEntriesStateInitial value),
    Result loadInProgress(_DictionaryWordEntriesStateLoadInProgress value),
    Result loadEntriesSuccess(
        _DictionaryWordEntriesStateLoadEntriesSuccess value),
    Result loadFailure(_DictionaryWordEntriesStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DictionaryWordEntriesStateLoadFailure
    implements DictionaryWordEntriesState {
  const factory _DictionaryWordEntriesStateLoadFailure({String message}) =
      _$_DictionaryWordEntriesStateLoadFailure;

  String get message;
  _$DictionaryWordEntriesStateLoadFailureCopyWith<
      _DictionaryWordEntriesStateLoadFailure> get copyWith;
}
