// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dictionary_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DictionaryWordTearOff {
  const _$DictionaryWordTearOff();

  _DictionaryWord call({required String id, required String label}) {
    return _DictionaryWord(
      id: id,
      label: label,
    );
  }
}

/// @nodoc
const $DictionaryWord = _$DictionaryWordTearOff();

/// @nodoc
mixin _$DictionaryWord {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionaryWordCopyWith<DictionaryWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryWordCopyWith<$Res> {
  factory $DictionaryWordCopyWith(
          DictionaryWord value, $Res Function(DictionaryWord) then) =
      _$DictionaryWordCopyWithImpl<$Res>;
  $Res call({String id, String label});
}

/// @nodoc
class _$DictionaryWordCopyWithImpl<$Res>
    implements $DictionaryWordCopyWith<$Res> {
  _$DictionaryWordCopyWithImpl(this._value, this._then);

  final DictionaryWord _value;
  // ignore: unused_field
  final $Res Function(DictionaryWord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DictionaryWordCopyWith<$Res>
    implements $DictionaryWordCopyWith<$Res> {
  factory _$DictionaryWordCopyWith(
          _DictionaryWord value, $Res Function(_DictionaryWord) then) =
      __$DictionaryWordCopyWithImpl<$Res>;
  @override
  $Res call({String id, String label});
}

/// @nodoc
class __$DictionaryWordCopyWithImpl<$Res>
    extends _$DictionaryWordCopyWithImpl<$Res>
    implements _$DictionaryWordCopyWith<$Res> {
  __$DictionaryWordCopyWithImpl(
      _DictionaryWord _value, $Res Function(_DictionaryWord) _then)
      : super(_value, (v) => _then(v as _DictionaryWord));

  @override
  _DictionaryWord get _value => super._value as _DictionaryWord;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_DictionaryWord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DictionaryWord implements _DictionaryWord {
  const _$_DictionaryWord({required this.id, required this.label});

  @override
  final String id;
  @override
  final String label;

  @override
  String toString() {
    return 'DictionaryWord(id: $id, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DictionaryWord &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label);

  @JsonKey(ignore: true)
  @override
  _$DictionaryWordCopyWith<_DictionaryWord> get copyWith =>
      __$DictionaryWordCopyWithImpl<_DictionaryWord>(this, _$identity);
}

abstract class _DictionaryWord implements DictionaryWord {
  const factory _DictionaryWord({required String id, required String label}) =
      _$_DictionaryWord;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DictionaryWordCopyWith<_DictionaryWord> get copyWith =>
      throw _privateConstructorUsedError;
}
