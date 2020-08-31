// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorited_words_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoritedWordsWatcherStateTearOff {
  const _$FavoritedWordsWatcherStateTearOff();

// ignore: unused_element
  FavoritedWordsWatcherStateInitial inital() {
    return const FavoritedWordsWatcherStateInitial();
  }

// ignore: unused_element
  FavoritedWordsWatcherStateLoadInProgress loadInProgress() {
    return const FavoritedWordsWatcherStateLoadInProgress();
  }

// ignore: unused_element
  FavoritedWordsWatcherStateLoadFavoritedWordsSuccess loadFavoritedWordsSuccess(
      {@required KtList<DictionaryWord> words}) {
    return FavoritedWordsWatcherStateLoadFavoritedWordsSuccess(
      words: words,
    );
  }

// ignore: unused_element
  FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure loadFailure(
      {@required String message}) {
    return FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $FavoritedWordsWatcherState = _$FavoritedWordsWatcherStateTearOff();

mixin _$FavoritedWordsWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(FavoritedWordsWatcherStateInitial value),
    @required
        Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(
            FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    @required
        Result loadFailure(
            FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(FavoritedWordsWatcherStateInitial value),
    Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    Result loadFavoritedWordsSuccess(
        FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    Result loadFailure(
        FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $FavoritedWordsWatcherStateCopyWith<$Res> {
  factory $FavoritedWordsWatcherStateCopyWith(FavoritedWordsWatcherState value,
          $Res Function(FavoritedWordsWatcherState) then) =
      _$FavoritedWordsWatcherStateCopyWithImpl<$Res>;
}

class _$FavoritedWordsWatcherStateCopyWithImpl<$Res>
    implements $FavoritedWordsWatcherStateCopyWith<$Res> {
  _$FavoritedWordsWatcherStateCopyWithImpl(this._value, this._then);

  final FavoritedWordsWatcherState _value;
  // ignore: unused_field
  final $Res Function(FavoritedWordsWatcherState) _then;
}

abstract class $FavoritedWordsWatcherStateInitialCopyWith<$Res> {
  factory $FavoritedWordsWatcherStateInitialCopyWith(
          FavoritedWordsWatcherStateInitial value,
          $Res Function(FavoritedWordsWatcherStateInitial) then) =
      _$FavoritedWordsWatcherStateInitialCopyWithImpl<$Res>;
}

class _$FavoritedWordsWatcherStateInitialCopyWithImpl<$Res>
    extends _$FavoritedWordsWatcherStateCopyWithImpl<$Res>
    implements $FavoritedWordsWatcherStateInitialCopyWith<$Res> {
  _$FavoritedWordsWatcherStateInitialCopyWithImpl(
      FavoritedWordsWatcherStateInitial _value,
      $Res Function(FavoritedWordsWatcherStateInitial) _then)
      : super(_value, (v) => _then(v as FavoritedWordsWatcherStateInitial));

  @override
  FavoritedWordsWatcherStateInitial get _value =>
      super._value as FavoritedWordsWatcherStateInitial;
}

class _$FavoritedWordsWatcherStateInitial
    implements FavoritedWordsWatcherStateInitial {
  const _$FavoritedWordsWatcherStateInitial();

  @override
  String toString() {
    return 'FavoritedWordsWatcherState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritedWordsWatcherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(FavoritedWordsWatcherStateInitial value),
    @required
        Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(
            FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    @required
        Result loadFailure(
            FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(FavoritedWordsWatcherStateInitial value),
    Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    Result loadFavoritedWordsSuccess(
        FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    Result loadFailure(
        FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class FavoritedWordsWatcherStateInitial
    implements FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherStateInitial() =
      _$FavoritedWordsWatcherStateInitial;
}

abstract class $FavoritedWordsWatcherStateLoadInProgressCopyWith<$Res> {
  factory $FavoritedWordsWatcherStateLoadInProgressCopyWith(
          FavoritedWordsWatcherStateLoadInProgress value,
          $Res Function(FavoritedWordsWatcherStateLoadInProgress) then) =
      _$FavoritedWordsWatcherStateLoadInProgressCopyWithImpl<$Res>;
}

class _$FavoritedWordsWatcherStateLoadInProgressCopyWithImpl<$Res>
    extends _$FavoritedWordsWatcherStateCopyWithImpl<$Res>
    implements $FavoritedWordsWatcherStateLoadInProgressCopyWith<$Res> {
  _$FavoritedWordsWatcherStateLoadInProgressCopyWithImpl(
      FavoritedWordsWatcherStateLoadInProgress _value,
      $Res Function(FavoritedWordsWatcherStateLoadInProgress) _then)
      : super(_value,
            (v) => _then(v as FavoritedWordsWatcherStateLoadInProgress));

  @override
  FavoritedWordsWatcherStateLoadInProgress get _value =>
      super._value as FavoritedWordsWatcherStateLoadInProgress;
}

class _$FavoritedWordsWatcherStateLoadInProgress
    implements FavoritedWordsWatcherStateLoadInProgress {
  const _$FavoritedWordsWatcherStateLoadInProgress();

  @override
  String toString() {
    return 'FavoritedWordsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritedWordsWatcherStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
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
    @required Result inital(FavoritedWordsWatcherStateInitial value),
    @required
        Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(
            FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    @required
        Result loadFailure(
            FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(FavoritedWordsWatcherStateInitial value),
    Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    Result loadFavoritedWordsSuccess(
        FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    Result loadFailure(
        FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class FavoritedWordsWatcherStateLoadInProgress
    implements FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherStateLoadInProgress() =
      _$FavoritedWordsWatcherStateLoadInProgress;
}

abstract class $FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWith<
    $Res> {
  factory $FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWith(
          FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value,
          $Res Function(FavoritedWordsWatcherStateLoadFavoritedWordsSuccess)
              then) =
      _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DictionaryWord> words});
}

class _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsWatcherStateCopyWithImpl<$Res>
    implements
        $FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWith<$Res> {
  _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWithImpl(
      FavoritedWordsWatcherStateLoadFavoritedWordsSuccess _value,
      $Res Function(FavoritedWordsWatcherStateLoadFavoritedWordsSuccess) _then)
      : super(
            _value,
            (v) => _then(
                v as FavoritedWordsWatcherStateLoadFavoritedWordsSuccess));

  @override
  FavoritedWordsWatcherStateLoadFavoritedWordsSuccess get _value =>
      super._value as FavoritedWordsWatcherStateLoadFavoritedWordsSuccess;

  @override
  $Res call({
    Object words = freezed,
  }) {
    return _then(FavoritedWordsWatcherStateLoadFavoritedWordsSuccess(
      words: words == freezed ? _value.words : words as KtList<DictionaryWord>,
    ));
  }
}

class _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccess
    implements FavoritedWordsWatcherStateLoadFavoritedWordsSuccess {
  const _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccess(
      {@required this.words})
      : assert(words != null);

  @override
  final KtList<DictionaryWord> words;

  @override
  String toString() {
    return 'FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritedWordsWatcherStateLoadFavoritedWordsSuccess &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @override
  $FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWith<
          FavoritedWordsWatcherStateLoadFavoritedWordsSuccess>
      get copyWith =>
          _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWithImpl<
                  FavoritedWordsWatcherStateLoadFavoritedWordsSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadFavoritedWordsSuccess(words);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    Result loadFailure(String message),
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
    @required Result inital(FavoritedWordsWatcherStateInitial value),
    @required
        Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(
            FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    @required
        Result loadFailure(
            FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadFavoritedWordsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(FavoritedWordsWatcherStateInitial value),
    Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    Result loadFavoritedWordsSuccess(
        FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    Result loadFailure(
        FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFavoritedWordsSuccess != null) {
      return loadFavoritedWordsSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoritedWordsWatcherStateLoadFavoritedWordsSuccess
    implements FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherStateLoadFavoritedWordsSuccess(
          {@required KtList<DictionaryWord> words}) =
      _$FavoritedWordsWatcherStateLoadFavoritedWordsSuccess;

  KtList<DictionaryWord> get words;
  $FavoritedWordsWatcherStateLoadFavoritedWordsSuccessCopyWith<
      FavoritedWordsWatcherStateLoadFavoritedWordsSuccess> get copyWith;
}

abstract class $FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWith<
    $Res> {
  factory $FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWith(
          FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value,
          $Res Function(
                  FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure)
              then) =
      _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWithImpl<
          $Res>;
  $Res call({String message});
}

class _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWithImpl<
        $Res> extends _$FavoritedWordsWatcherStateCopyWithImpl<$Res>
    implements
        $FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWith<
            $Res> {
  _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWithImpl(
      FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure _value,
      $Res Function(FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure)
          _then)
      : super(
            _value,
            (v) => _then(
                v as FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure));

  @override
  FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure get _value =>
      super._value as FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure
    implements FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure {
  const _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure(
      {@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritedWordsWatcherState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWith<
          FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure>
      get copyWith =>
          _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWithImpl<
                  FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loadInProgress(),
    @required Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
    @required Result loadFailure(String message),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loadInProgress(),
    Result loadFavoritedWordsSuccess(KtList<DictionaryWord> words),
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
    @required Result inital(FavoritedWordsWatcherStateInitial value),
    @required
        Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    @required
        Result loadFavoritedWordsSuccess(
            FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    @required
        Result loadFailure(
            FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
  }) {
    assert(inital != null);
    assert(loadInProgress != null);
    assert(loadFavoritedWordsSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(FavoritedWordsWatcherStateInitial value),
    Result loadInProgress(FavoritedWordsWatcherStateLoadInProgress value),
    Result loadFavoritedWordsSuccess(
        FavoritedWordsWatcherStateLoadFavoritedWordsSuccess value),
    Result loadFailure(
        FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure
    implements FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure(
          {@required String message}) =
      _$FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure;

  String get message;
  $FavoritedWordsWatcherStateFavoritedWordsStateLoadFailureCopyWith<
      FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure> get copyWith;
}
