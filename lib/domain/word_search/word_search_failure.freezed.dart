// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word_search_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WordSearchFailureTearOff {
  const _$WordSearchFailureTearOff();

  _WordSearchLocalFailure local(WordSearchLocalFailure failure) {
    return _WordSearchLocalFailure(
      failure,
    );
  }

  _WordSearchRemoteFailure remote(WordSearchRemoteFailure failure) {
    return _WordSearchRemoteFailure(
      failure,
    );
  }
}

/// @nodoc
const $WordSearchFailure = _$WordSearchFailureTearOff();

/// @nodoc
mixin _$WordSearchFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordSearchLocalFailure failure) local,
    required TResult Function(WordSearchRemoteFailure failure) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordSearchLocalFailure failure)? local,
    TResult Function(WordSearchRemoteFailure failure)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordSearchLocalFailure value) local,
    required TResult Function(_WordSearchRemoteFailure value) remote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordSearchLocalFailure value)? local,
    TResult Function(_WordSearchRemoteFailure value)? remote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordSearchFailureCopyWith<$Res> {
  factory $WordSearchFailureCopyWith(
          WordSearchFailure value, $Res Function(WordSearchFailure) then) =
      _$WordSearchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$WordSearchFailureCopyWithImpl<$Res>
    implements $WordSearchFailureCopyWith<$Res> {
  _$WordSearchFailureCopyWithImpl(this._value, this._then);

  final WordSearchFailure _value;
  // ignore: unused_field
  final $Res Function(WordSearchFailure) _then;
}

/// @nodoc
abstract class _$WordSearchLocalFailureCopyWith<$Res> {
  factory _$WordSearchLocalFailureCopyWith(_WordSearchLocalFailure value,
          $Res Function(_WordSearchLocalFailure) then) =
      __$WordSearchLocalFailureCopyWithImpl<$Res>;
  $Res call({WordSearchLocalFailure failure});

  $WordSearchLocalFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$WordSearchLocalFailureCopyWithImpl<$Res>
    extends _$WordSearchFailureCopyWithImpl<$Res>
    implements _$WordSearchLocalFailureCopyWith<$Res> {
  __$WordSearchLocalFailureCopyWithImpl(_WordSearchLocalFailure _value,
      $Res Function(_WordSearchLocalFailure) _then)
      : super(_value, (v) => _then(v as _WordSearchLocalFailure));

  @override
  _WordSearchLocalFailure get _value => super._value as _WordSearchLocalFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_WordSearchLocalFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WordSearchLocalFailure,
    ));
  }

  @override
  $WordSearchLocalFailureCopyWith<$Res> get failure {
    return $WordSearchLocalFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_WordSearchLocalFailure implements _WordSearchLocalFailure {
  const _$_WordSearchLocalFailure(this.failure);

  @override
  final WordSearchLocalFailure failure;

  @override
  String toString() {
    return 'WordSearchFailure.local(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordSearchLocalFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$WordSearchLocalFailureCopyWith<_WordSearchLocalFailure> get copyWith =>
      __$WordSearchLocalFailureCopyWithImpl<_WordSearchLocalFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordSearchLocalFailure failure) local,
    required TResult Function(WordSearchRemoteFailure failure) remote,
  }) {
    return local(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordSearchLocalFailure failure)? local,
    TResult Function(WordSearchRemoteFailure failure)? remote,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordSearchLocalFailure value) local,
    required TResult Function(_WordSearchRemoteFailure value) remote,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordSearchLocalFailure value)? local,
    TResult Function(_WordSearchRemoteFailure value)? remote,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _WordSearchLocalFailure implements WordSearchFailure {
  const factory _WordSearchLocalFailure(WordSearchLocalFailure failure) =
      _$_WordSearchLocalFailure;

  WordSearchLocalFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WordSearchLocalFailureCopyWith<_WordSearchLocalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WordSearchRemoteFailureCopyWith<$Res> {
  factory _$WordSearchRemoteFailureCopyWith(_WordSearchRemoteFailure value,
          $Res Function(_WordSearchRemoteFailure) then) =
      __$WordSearchRemoteFailureCopyWithImpl<$Res>;
  $Res call({WordSearchRemoteFailure failure});

  $WordSearchRemoteFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$WordSearchRemoteFailureCopyWithImpl<$Res>
    extends _$WordSearchFailureCopyWithImpl<$Res>
    implements _$WordSearchRemoteFailureCopyWith<$Res> {
  __$WordSearchRemoteFailureCopyWithImpl(_WordSearchRemoteFailure _value,
      $Res Function(_WordSearchRemoteFailure) _then)
      : super(_value, (v) => _then(v as _WordSearchRemoteFailure));

  @override
  _WordSearchRemoteFailure get _value =>
      super._value as _WordSearchRemoteFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_WordSearchRemoteFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WordSearchRemoteFailure,
    ));
  }

  @override
  $WordSearchRemoteFailureCopyWith<$Res> get failure {
    return $WordSearchRemoteFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_WordSearchRemoteFailure implements _WordSearchRemoteFailure {
  const _$_WordSearchRemoteFailure(this.failure);

  @override
  final WordSearchRemoteFailure failure;

  @override
  String toString() {
    return 'WordSearchFailure.remote(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WordSearchRemoteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$WordSearchRemoteFailureCopyWith<_WordSearchRemoteFailure> get copyWith =>
      __$WordSearchRemoteFailureCopyWithImpl<_WordSearchRemoteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WordSearchLocalFailure failure) local,
    required TResult Function(WordSearchRemoteFailure failure) remote,
  }) {
    return remote(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WordSearchLocalFailure failure)? local,
    TResult Function(WordSearchRemoteFailure failure)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WordSearchLocalFailure value) local,
    required TResult Function(_WordSearchRemoteFailure value) remote,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WordSearchLocalFailure value)? local,
    TResult Function(_WordSearchRemoteFailure value)? remote,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class _WordSearchRemoteFailure implements WordSearchFailure {
  const factory _WordSearchRemoteFailure(WordSearchRemoteFailure failure) =
      _$_WordSearchRemoteFailure;

  WordSearchRemoteFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WordSearchRemoteFailureCopyWith<_WordSearchRemoteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
