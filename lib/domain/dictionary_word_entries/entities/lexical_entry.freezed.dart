// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lexical_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LexicalEntryTearOff {
  const _$LexicalEntryTearOff();

  _LexicalEntry call(
      {@required KtList<Entry> entries, @required String lexicalCategory}) {
    return _LexicalEntry(
      entries: entries,
      lexicalCategory: lexicalCategory,
    );
  }
}

// ignore: unused_element
const $LexicalEntry = _$LexicalEntryTearOff();

mixin _$LexicalEntry {
  KtList<Entry> get entries;
  String get lexicalCategory;

  $LexicalEntryCopyWith<LexicalEntry> get copyWith;
}

abstract class $LexicalEntryCopyWith<$Res> {
  factory $LexicalEntryCopyWith(
          LexicalEntry value, $Res Function(LexicalEntry) then) =
      _$LexicalEntryCopyWithImpl<$Res>;
  $Res call({KtList<Entry> entries, String lexicalCategory});
}

class _$LexicalEntryCopyWithImpl<$Res> implements $LexicalEntryCopyWith<$Res> {
  _$LexicalEntryCopyWithImpl(this._value, this._then);

  final LexicalEntry _value;
  // ignore: unused_field
  final $Res Function(LexicalEntry) _then;

  @override
  $Res call({
    Object entries = freezed,
    Object lexicalCategory = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed ? _value.entries : entries as KtList<Entry>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as String,
    ));
  }
}

abstract class _$LexicalEntryCopyWith<$Res>
    implements $LexicalEntryCopyWith<$Res> {
  factory _$LexicalEntryCopyWith(
          _LexicalEntry value, $Res Function(_LexicalEntry) then) =
      __$LexicalEntryCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Entry> entries, String lexicalCategory});
}

class __$LexicalEntryCopyWithImpl<$Res> extends _$LexicalEntryCopyWithImpl<$Res>
    implements _$LexicalEntryCopyWith<$Res> {
  __$LexicalEntryCopyWithImpl(
      _LexicalEntry _value, $Res Function(_LexicalEntry) _then)
      : super(_value, (v) => _then(v as _LexicalEntry));

  @override
  _LexicalEntry get _value => super._value as _LexicalEntry;

  @override
  $Res call({
    Object entries = freezed,
    Object lexicalCategory = freezed,
  }) {
    return _then(_LexicalEntry(
      entries: entries == freezed ? _value.entries : entries as KtList<Entry>,
      lexicalCategory: lexicalCategory == freezed
          ? _value.lexicalCategory
          : lexicalCategory as String,
    ));
  }
}

class _$_LexicalEntry implements _LexicalEntry {
  const _$_LexicalEntry(
      {@required this.entries, @required this.lexicalCategory})
      : assert(entries != null),
        assert(lexicalCategory != null);

  @override
  final KtList<Entry> entries;
  @override
  final String lexicalCategory;

  @override
  String toString() {
    return 'LexicalEntry(entries: $entries, lexicalCategory: $lexicalCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LexicalEntry &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality()
                    .equals(other.entries, entries)) &&
            (identical(other.lexicalCategory, lexicalCategory) ||
                const DeepCollectionEquality()
                    .equals(other.lexicalCategory, lexicalCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entries) ^
      const DeepCollectionEquality().hash(lexicalCategory);

  @override
  _$LexicalEntryCopyWith<_LexicalEntry> get copyWith =>
      __$LexicalEntryCopyWithImpl<_LexicalEntry>(this, _$identity);
}

abstract class _LexicalEntry implements LexicalEntry {
  const factory _LexicalEntry(
      {@required KtList<Entry> entries,
      @required String lexicalCategory}) = _$_LexicalEntry;

  @override
  KtList<Entry> get entries;
  @override
  String get lexicalCategory;
  @override
  _$LexicalEntryCopyWith<_LexicalEntry> get copyWith;
}
