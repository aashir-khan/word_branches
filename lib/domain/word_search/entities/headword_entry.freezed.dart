// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'headword_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeadwordEntryTearOff {
  const _$HeadwordEntryTearOff();

  _HeadwordEntry call(
      {required String id, required KtList<LexicalEntry> lexicalEntries}) {
    return _HeadwordEntry(
      id: id,
      lexicalEntries: lexicalEntries,
    );
  }
}

/// @nodoc
const $HeadwordEntry = _$HeadwordEntryTearOff();

/// @nodoc
mixin _$HeadwordEntry {
  String get id => throw _privateConstructorUsedError;
  KtList<LexicalEntry> get lexicalEntries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeadwordEntryCopyWith<HeadwordEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadwordEntryCopyWith<$Res> {
  factory $HeadwordEntryCopyWith(
          HeadwordEntry value, $Res Function(HeadwordEntry) then) =
      _$HeadwordEntryCopyWithImpl<$Res>;
  $Res call({String id, KtList<LexicalEntry> lexicalEntries});
}

/// @nodoc
class _$HeadwordEntryCopyWithImpl<$Res>
    implements $HeadwordEntryCopyWith<$Res> {
  _$HeadwordEntryCopyWithImpl(this._value, this._then);

  final HeadwordEntry _value;
  // ignore: unused_field
  final $Res Function(HeadwordEntry) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lexicalEntries = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lexicalEntries: lexicalEntries == freezed
          ? _value.lexicalEntries
          : lexicalEntries // ignore: cast_nullable_to_non_nullable
              as KtList<LexicalEntry>,
    ));
  }
}

/// @nodoc
abstract class _$HeadwordEntryCopyWith<$Res>
    implements $HeadwordEntryCopyWith<$Res> {
  factory _$HeadwordEntryCopyWith(
          _HeadwordEntry value, $Res Function(_HeadwordEntry) then) =
      __$HeadwordEntryCopyWithImpl<$Res>;
  @override
  $Res call({String id, KtList<LexicalEntry> lexicalEntries});
}

/// @nodoc
class __$HeadwordEntryCopyWithImpl<$Res>
    extends _$HeadwordEntryCopyWithImpl<$Res>
    implements _$HeadwordEntryCopyWith<$Res> {
  __$HeadwordEntryCopyWithImpl(
      _HeadwordEntry _value, $Res Function(_HeadwordEntry) _then)
      : super(_value, (v) => _then(v as _HeadwordEntry));

  @override
  _HeadwordEntry get _value => super._value as _HeadwordEntry;

  @override
  $Res call({
    Object? id = freezed,
    Object? lexicalEntries = freezed,
  }) {
    return _then(_HeadwordEntry(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lexicalEntries: lexicalEntries == freezed
          ? _value.lexicalEntries
          : lexicalEntries // ignore: cast_nullable_to_non_nullable
              as KtList<LexicalEntry>,
    ));
  }
}

/// @nodoc

class _$_HeadwordEntry extends _HeadwordEntry {
  const _$_HeadwordEntry({required this.id, required this.lexicalEntries})
      : super._();

  @override
  final String id;
  @override
  final KtList<LexicalEntry> lexicalEntries;

  @override
  String toString() {
    return 'HeadwordEntry(id: $id, lexicalEntries: $lexicalEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeadwordEntry &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lexicalEntries, lexicalEntries) ||
                const DeepCollectionEquality()
                    .equals(other.lexicalEntries, lexicalEntries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lexicalEntries);

  @JsonKey(ignore: true)
  @override
  _$HeadwordEntryCopyWith<_HeadwordEntry> get copyWith =>
      __$HeadwordEntryCopyWithImpl<_HeadwordEntry>(this, _$identity);
}

abstract class _HeadwordEntry extends HeadwordEntry {
  const factory _HeadwordEntry(
      {required String id,
      required KtList<LexicalEntry> lexicalEntries}) = _$_HeadwordEntry;
  const _HeadwordEntry._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  KtList<LexicalEntry> get lexicalEntries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeadwordEntryCopyWith<_HeadwordEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
