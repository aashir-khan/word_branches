// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'headword_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadwordEntryDto _$HeadwordEntryDtoFromJson(Map<String, dynamic> json) {
  return _HeadwordEntryDto.fromJson(json);
}

/// @nodoc
class _$HeadwordEntryDtoTearOff {
  const _$HeadwordEntryDtoTearOff();

  _HeadwordEntryDto call(
      {required String id, required List<LexicalEntryDto> lexicalEntries}) {
    return _HeadwordEntryDto(
      id: id,
      lexicalEntries: lexicalEntries,
    );
  }

  HeadwordEntryDto fromJson(Map<String, Object> json) {
    return HeadwordEntryDto.fromJson(json);
  }
}

/// @nodoc
const $HeadwordEntryDto = _$HeadwordEntryDtoTearOff();

/// @nodoc
mixin _$HeadwordEntryDto {
  String get id => throw _privateConstructorUsedError;
  List<LexicalEntryDto> get lexicalEntries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadwordEntryDtoCopyWith<HeadwordEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadwordEntryDtoCopyWith<$Res> {
  factory $HeadwordEntryDtoCopyWith(
          HeadwordEntryDto value, $Res Function(HeadwordEntryDto) then) =
      _$HeadwordEntryDtoCopyWithImpl<$Res>;
  $Res call({String id, List<LexicalEntryDto> lexicalEntries});
}

/// @nodoc
class _$HeadwordEntryDtoCopyWithImpl<$Res>
    implements $HeadwordEntryDtoCopyWith<$Res> {
  _$HeadwordEntryDtoCopyWithImpl(this._value, this._then);

  final HeadwordEntryDto _value;
  // ignore: unused_field
  final $Res Function(HeadwordEntryDto) _then;

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
              as List<LexicalEntryDto>,
    ));
  }
}

/// @nodoc
abstract class _$HeadwordEntryDtoCopyWith<$Res>
    implements $HeadwordEntryDtoCopyWith<$Res> {
  factory _$HeadwordEntryDtoCopyWith(
          _HeadwordEntryDto value, $Res Function(_HeadwordEntryDto) then) =
      __$HeadwordEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<LexicalEntryDto> lexicalEntries});
}

/// @nodoc
class __$HeadwordEntryDtoCopyWithImpl<$Res>
    extends _$HeadwordEntryDtoCopyWithImpl<$Res>
    implements _$HeadwordEntryDtoCopyWith<$Res> {
  __$HeadwordEntryDtoCopyWithImpl(
      _HeadwordEntryDto _value, $Res Function(_HeadwordEntryDto) _then)
      : super(_value, (v) => _then(v as _HeadwordEntryDto));

  @override
  _HeadwordEntryDto get _value => super._value as _HeadwordEntryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? lexicalEntries = freezed,
  }) {
    return _then(_HeadwordEntryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lexicalEntries: lexicalEntries == freezed
          ? _value.lexicalEntries
          : lexicalEntries // ignore: cast_nullable_to_non_nullable
              as List<LexicalEntryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeadwordEntryDto implements _HeadwordEntryDto {
  _$_HeadwordEntryDto({required this.id, required this.lexicalEntries});

  factory _$_HeadwordEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HeadwordEntryDtoFromJson(json);

  @override
  final String id;
  @override
  final List<LexicalEntryDto> lexicalEntries;

  @override
  String toString() {
    return 'HeadwordEntryDto(id: $id, lexicalEntries: $lexicalEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeadwordEntryDto &&
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
  _$HeadwordEntryDtoCopyWith<_HeadwordEntryDto> get copyWith =>
      __$HeadwordEntryDtoCopyWithImpl<_HeadwordEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeadwordEntryDtoToJson(this);
  }
}

abstract class _HeadwordEntryDto implements HeadwordEntryDto {
  factory _HeadwordEntryDto(
      {required String id,
      required List<LexicalEntryDto> lexicalEntries}) = _$_HeadwordEntryDto;

  factory _HeadwordEntryDto.fromJson(Map<String, dynamic> json) =
      _$_HeadwordEntryDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<LexicalEntryDto> get lexicalEntries =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeadwordEntryDtoCopyWith<_HeadwordEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
