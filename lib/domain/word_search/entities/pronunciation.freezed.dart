// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pronunciation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PronunciationTearOff {
  const _$PronunciationTearOff();

  _Pronunciation call({required String audioFile}) {
    return _Pronunciation(
      audioFile: audioFile,
    );
  }
}

/// @nodoc
const $Pronunciation = _$PronunciationTearOff();

/// @nodoc
mixin _$Pronunciation {
  String get audioFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PronunciationCopyWith<Pronunciation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PronunciationCopyWith<$Res> {
  factory $PronunciationCopyWith(
          Pronunciation value, $Res Function(Pronunciation) then) =
      _$PronunciationCopyWithImpl<$Res>;
  $Res call({String audioFile});
}

/// @nodoc
class _$PronunciationCopyWithImpl<$Res>
    implements $PronunciationCopyWith<$Res> {
  _$PronunciationCopyWithImpl(this._value, this._then);

  final Pronunciation _value;
  // ignore: unused_field
  final $Res Function(Pronunciation) _then;

  @override
  $Res call({
    Object? audioFile = freezed,
  }) {
    return _then(_value.copyWith(
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PronunciationCopyWith<$Res>
    implements $PronunciationCopyWith<$Res> {
  factory _$PronunciationCopyWith(
          _Pronunciation value, $Res Function(_Pronunciation) then) =
      __$PronunciationCopyWithImpl<$Res>;
  @override
  $Res call({String audioFile});
}

/// @nodoc
class __$PronunciationCopyWithImpl<$Res>
    extends _$PronunciationCopyWithImpl<$Res>
    implements _$PronunciationCopyWith<$Res> {
  __$PronunciationCopyWithImpl(
      _Pronunciation _value, $Res Function(_Pronunciation) _then)
      : super(_value, (v) => _then(v as _Pronunciation));

  @override
  _Pronunciation get _value => super._value as _Pronunciation;

  @override
  $Res call({
    Object? audioFile = freezed,
  }) {
    return _then(_Pronunciation(
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Pronunciation implements _Pronunciation {
  const _$_Pronunciation({required this.audioFile});

  @override
  final String audioFile;

  @override
  String toString() {
    return 'Pronunciation(audioFile: $audioFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pronunciation &&
            (identical(other.audioFile, audioFile) ||
                const DeepCollectionEquality()
                    .equals(other.audioFile, audioFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(audioFile);

  @JsonKey(ignore: true)
  @override
  _$PronunciationCopyWith<_Pronunciation> get copyWith =>
      __$PronunciationCopyWithImpl<_Pronunciation>(this, _$identity);
}

abstract class _Pronunciation implements Pronunciation {
  const factory _Pronunciation({required String audioFile}) = _$_Pronunciation;

  @override
  String get audioFile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PronunciationCopyWith<_Pronunciation> get copyWith =>
      throw _privateConstructorUsedError;
}
