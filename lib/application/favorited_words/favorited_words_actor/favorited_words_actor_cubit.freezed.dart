// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorited_words_actor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoritedWordsActorStateTearOff {
  const _$FavoritedWordsActorStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _AddSuccess addSuccess({@required DictionaryWord word}) {
    return _AddSuccess(
      word: word,
    );
  }

// ignore: unused_element
  DeleteSuccess deleteSuccess({@required DictionaryWord word}) {
    return DeleteSuccess(
      word: word,
    );
  }

// ignore: unused_element
  _ActionFailure actionFailure({@required String message}) {
    return _ActionFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $FavoritedWordsActorState = _$FavoritedWordsActorStateTearOff();

mixin _$FavoritedWordsActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  });
}

abstract class $FavoritedWordsActorStateCopyWith<$Res> {
  factory $FavoritedWordsActorStateCopyWith(FavoritedWordsActorState value,
          $Res Function(FavoritedWordsActorState) then) =
      _$FavoritedWordsActorStateCopyWithImpl<$Res>;
}

class _$FavoritedWordsActorStateCopyWithImpl<$Res>
    implements $FavoritedWordsActorStateCopyWith<$Res> {
  _$FavoritedWordsActorStateCopyWithImpl(this._value, this._then);

  final FavoritedWordsActorState _value;
  // ignore: unused_field
  final $Res Function(FavoritedWordsActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$FavoritedWordsActorStateCopyWithImpl<$Res>
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
    return 'FavoritedWordsActorState.inital()';
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
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
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
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritedWordsActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$FavoritedWordsActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'FavoritedWordsActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FavoritedWordsActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
  $Res call({DictionaryWord word});

  $DictionaryWordCopyWith<$Res> get word;
}

class __$AddSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsActorStateCopyWithImpl<$Res>
    implements _$AddSuccessCopyWith<$Res> {
  __$AddSuccessCopyWithImpl(
      _AddSuccess _value, $Res Function(_AddSuccess) _then)
      : super(_value, (v) => _then(v as _AddSuccess));

  @override
  _AddSuccess get _value => super._value as _AddSuccess;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(_AddSuccess(
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

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess({@required this.word}) : assert(word != null);

  @override
  final DictionaryWord word;

  @override
  String toString() {
    return 'FavoritedWordsActorState.addSuccess(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSuccess &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @override
  _$AddSuccessCopyWith<_AddSuccess> get copyWith =>
      __$AddSuccessCopyWithImpl<_AddSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return addSuccess(word);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements FavoritedWordsActorState {
  const factory _AddSuccess({@required DictionaryWord word}) = _$_AddSuccess;

  DictionaryWord get word;
  _$AddSuccessCopyWith<_AddSuccess> get copyWith;
}

abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
  $Res call({DictionaryWord word});

  $DictionaryWordCopyWith<$Res> get word;
}

class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$FavoritedWordsActorStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;

  @override
  $Res call({
    Object word = freezed,
  }) {
    return _then(DeleteSuccess(
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

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess({@required this.word}) : assert(word != null);

  @override
  final DictionaryWord word;

  @override
  String toString() {
    return 'FavoritedWordsActorState.deleteSuccess(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteSuccess &&
            (identical(other.word, word) ||
                const DeepCollectionEquality().equals(other.word, word)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(word);

  @override
  $DeleteSuccessCopyWith<DeleteSuccess> get copyWith =>
      _$DeleteSuccessCopyWithImpl<DeleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return deleteSuccess(word);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements FavoritedWordsActorState {
  const factory DeleteSuccess({@required DictionaryWord word}) =
      _$DeleteSuccess;

  DictionaryWord get word;
  $DeleteSuccessCopyWith<DeleteSuccess> get copyWith;
}

abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ActionFailureCopyWithImpl<$Res>
    extends _$FavoritedWordsActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ActionFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritedWordsActorState.actionFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result actionInProgress(),
    @required Result addSuccess(DictionaryWord word),
    @required Result deleteSuccess(DictionaryWord word),
    @required Result actionFailure(String message),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return actionFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result actionInProgress(),
    Result addSuccess(DictionaryWord word),
    Result deleteSuccess(DictionaryWord word),
    Result actionFailure(String message),
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
    @required Result inital(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result addSuccess(_AddSuccess value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result actionFailure(_ActionFailure value),
  }) {
    assert(inital != null);
    assert(actionInProgress != null);
    assert(addSuccess != null);
    assert(deleteSuccess != null);
    assert(actionFailure != null);
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result addSuccess(_AddSuccess value),
    Result deleteSuccess(DeleteSuccess value),
    Result actionFailure(_ActionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements FavoritedWordsActorState {
  const factory _ActionFailure({@required String message}) = _$_ActionFailure;

  String get message;
  _$ActionFailureCopyWith<_ActionFailure> get copyWith;
}
