// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'related_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelatedEntryDto _$RelatedEntryDtoFromJson(Map<String, dynamic> json) {
  return _RelatedEntryDto.fromJson(json);
}

/// @nodoc
class _$RelatedEntryDtoTearOff {
  const _$RelatedEntryDtoTearOff();

  _RelatedEntryDto call({required String id, required String text}) {
    return _RelatedEntryDto(
      id: id,
      text: text,
    );
  }

  RelatedEntryDto fromJson(Map<String, Object> json) {
    return RelatedEntryDto.fromJson(json);
  }
}

/// @nodoc
const $RelatedEntryDto = _$RelatedEntryDtoTearOff();

/// @nodoc
mixin _$RelatedEntryDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedEntryDtoCopyWith<RelatedEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedEntryDtoCopyWith<$Res> {
  factory $RelatedEntryDtoCopyWith(
          RelatedEntryDto value, $Res Function(RelatedEntryDto) then) =
      _$RelatedEntryDtoCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

/// @nodoc
class _$RelatedEntryDtoCopyWithImpl<$Res>
    implements $RelatedEntryDtoCopyWith<$Res> {
  _$RelatedEntryDtoCopyWithImpl(this._value, this._then);

  final RelatedEntryDto _value;
  // ignore: unused_field
  final $Res Function(RelatedEntryDto) _then;

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
abstract class _$RelatedEntryDtoCopyWith<$Res>
    implements $RelatedEntryDtoCopyWith<$Res> {
  factory _$RelatedEntryDtoCopyWith(
          _RelatedEntryDto value, $Res Function(_RelatedEntryDto) then) =
      __$RelatedEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

/// @nodoc
class __$RelatedEntryDtoCopyWithImpl<$Res>
    extends _$RelatedEntryDtoCopyWithImpl<$Res>
    implements _$RelatedEntryDtoCopyWith<$Res> {
  __$RelatedEntryDtoCopyWithImpl(
      _RelatedEntryDto _value, $Res Function(_RelatedEntryDto) _then)
      : super(_value, (v) => _then(v as _RelatedEntryDto));

  @override
  _RelatedEntryDto get _value => super._value as _RelatedEntryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_RelatedEntryDto(
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
@JsonSerializable()
class _$_RelatedEntryDto implements _RelatedEntryDto {
  const _$_RelatedEntryDto({required this.id, required this.text});

  factory _$_RelatedEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RelatedEntryDtoFromJson(json);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'RelatedEntryDto(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RelatedEntryDto &&
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
  _$RelatedEntryDtoCopyWith<_RelatedEntryDto> get copyWith =>
      __$RelatedEntryDtoCopyWithImpl<_RelatedEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RelatedEntryDtoToJson(this);
  }
}

abstract class _RelatedEntryDto implements RelatedEntryDto {
  const factory _RelatedEntryDto({required String id, required String text}) =
      _$_RelatedEntryDto;

  factory _RelatedEntryDto.fromJson(Map<String, dynamic> json) =
      _$_RelatedEntryDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RelatedEntryDtoCopyWith<_RelatedEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
