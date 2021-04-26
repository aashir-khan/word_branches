// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EntryTearOff {
  const _$EntryTearOff();

// ignore: unused_element
  _Entry call(
      {KtList<String> etymologies,
      @required KtList<Sense> senses,
      KtList<Pronunciation> pronunciations}) {
    return _Entry(
      etymologies: etymologies,
      senses: senses,
      pronunciations: pronunciations,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Entry = _$EntryTearOff();

/// @nodoc
mixin _$Entry {
  KtList<String> get etymologies;
  KtList<Sense> get senses;
  KtList<Pronunciation> get pronunciations;

  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res>;
  $Res call(
      {KtList<String> etymologies,
      KtList<Sense> senses,
      KtList<Pronunciation> pronunciations});
}

/// @nodoc
class _$EntryCopyWithImpl<$Res> implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  final Entry _value;
  // ignore: unused_field
  final $Res Function(Entry) _then;

  @override
  $Res call({
    Object etymologies = freezed,
    Object senses = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_value.copyWith(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as KtList<String>,
      senses: senses == freezed ? _value.senses : senses as KtList<Sense>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as KtList<Pronunciation>,
    ));
  }
}

/// @nodoc
abstract class _$EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$EntryCopyWith(_Entry value, $Res Function(_Entry) then) =
      __$EntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<String> etymologies,
      KtList<Sense> senses,
      KtList<Pronunciation> pronunciations});
}

/// @nodoc
class __$EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res>
    implements _$EntryCopyWith<$Res> {
  __$EntryCopyWithImpl(_Entry _value, $Res Function(_Entry) _then)
      : super(_value, (v) => _then(v as _Entry));

  @override
  _Entry get _value => super._value as _Entry;

  @override
  $Res call({
    Object etymologies = freezed,
    Object senses = freezed,
    Object pronunciations = freezed,
  }) {
    return _then(_Entry(
      etymologies: etymologies == freezed
          ? _value.etymologies
          : etymologies as KtList<String>,
      senses: senses == freezed ? _value.senses : senses as KtList<Sense>,
      pronunciations: pronunciations == freezed
          ? _value.pronunciations
          : pronunciations as KtList<Pronunciation>,
    ));
  }
}

/// @nodoc
class _$_Entry implements _Entry {
  const _$_Entry({this.etymologies, @required this.senses, this.pronunciations})
      : assert(senses != null);

  @override
  final KtList<String> etymologies;
  @override
  final KtList<Sense> senses;
  @override
  final KtList<Pronunciation> pronunciations;

  @override
  String toString() {
    return 'Entry(etymologies: $etymologies, senses: $senses, pronunciations: $pronunciations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Entry &&
            (identical(other.etymologies, etymologies) ||
                const DeepCollectionEquality()
                    .equals(other.etymologies, etymologies)) &&
            (identical(other.senses, senses) ||
                const DeepCollectionEquality().equals(other.senses, senses)) &&
            (identical(other.pronunciations, pronunciations) ||
                const DeepCollectionEquality()
                    .equals(other.pronunciations, pronunciations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(etymologies) ^
      const DeepCollectionEquality().hash(senses) ^
      const DeepCollectionEquality().hash(pronunciations);

  @JsonKey(ignore: true)
  @override
  _$EntryCopyWith<_Entry> get copyWith =>
      __$EntryCopyWithImpl<_Entry>(this, _$identity);
}

abstract class _Entry implements Entry {
  const factory _Entry(
      {KtList<String> etymologies,
      @required KtList<Sense> senses,
      KtList<Pronunciation> pronunciations}) = _$_Entry;

  @override
  KtList<String> get etymologies;
  @override
  KtList<Sense> get senses;
  @override
  KtList<Pronunciation> get pronunciations;
  @override
  @JsonKey(ignore: true)
  _$EntryCopyWith<_Entry> get copyWith;
}
