// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'related_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RelatedEntryTearOff {
  const _$RelatedEntryTearOff();

  _RelatedEntry call({required String id, required String text}) {
    return _RelatedEntry(
      id: id,
      text: text,
    );
  }
}

/// @nodoc
const $RelatedEntry = _$RelatedEntryTearOff();

/// @nodoc
mixin _$RelatedEntry {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelatedEntryCopyWith<RelatedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedEntryCopyWith<$Res> {
  factory $RelatedEntryCopyWith(
          RelatedEntry value, $Res Function(RelatedEntry) then) =
      _$RelatedEntryCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

/// @nodoc
class _$RelatedEntryCopyWithImpl<$Res> implements $RelatedEntryCopyWith<$Res> {
  _$RelatedEntryCopyWithImpl(this._value, this._then);

  final RelatedEntry _value;
  // ignore: unused_field
  final $Res Function(RelatedEntry) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RelatedEntryCopyWith<$Res>
    implements $RelatedEntryCopyWith<$Res> {
  factory _$RelatedEntryCopyWith(
          _RelatedEntry value, $Res Function(_RelatedEntry) then) =
      __$RelatedEntryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

/// @nodoc
class __$RelatedEntryCopyWithImpl<$Res> extends _$RelatedEntryCopyWithImpl<$Res>
    implements _$RelatedEntryCopyWith<$Res> {
  __$RelatedEntryCopyWithImpl(
      _RelatedEntry _value, $Res Function(_RelatedEntry) _then)
      : super(_value, (v) => _then(v as _RelatedEntry));

  @override
  _RelatedEntry get _value => super._value as _RelatedEntry;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_RelatedEntry(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RelatedEntry implements _RelatedEntry {
  const _$_RelatedEntry({required this.id, required this.text});

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'RelatedEntry(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RelatedEntry &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$RelatedEntryCopyWith<_RelatedEntry> get copyWith =>
      __$RelatedEntryCopyWithImpl<_RelatedEntry>(this, _$identity);
}

abstract class _RelatedEntry implements RelatedEntry {
  const factory _RelatedEntry({required String id, required String text}) =
      _$_RelatedEntry;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RelatedEntryCopyWith<_RelatedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
