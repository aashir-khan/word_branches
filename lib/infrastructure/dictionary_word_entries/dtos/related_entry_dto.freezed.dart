// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'related_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RelatedEntryDto _$RelatedEntryDtoFromJson(Map<String, dynamic> json) {
  return _RelatedEntryDto.fromJson(json);
}

class _$RelatedEntryDtoTearOff {
  const _$RelatedEntryDtoTearOff();

// ignore: unused_element
  _RelatedEntryDto call({@required String id, @required String text}) {
    return _RelatedEntryDto(
      id: id,
      text: text,
    );
  }
}

// ignore: unused_element
const $RelatedEntryDto = _$RelatedEntryDtoTearOff();

mixin _$RelatedEntryDto {
  String get id;
  String get text;

  Map<String, dynamic> toJson();
  $RelatedEntryDtoCopyWith<RelatedEntryDto> get copyWith;
}

abstract class $RelatedEntryDtoCopyWith<$Res> {
  factory $RelatedEntryDtoCopyWith(
          RelatedEntryDto value, $Res Function(RelatedEntryDto) then) =
      _$RelatedEntryDtoCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

class _$RelatedEntryDtoCopyWithImpl<$Res>
    implements $RelatedEntryDtoCopyWith<$Res> {
  _$RelatedEntryDtoCopyWithImpl(this._value, this._then);

  final RelatedEntryDto _value;
  // ignore: unused_field
  final $Res Function(RelatedEntryDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

abstract class _$RelatedEntryDtoCopyWith<$Res>
    implements $RelatedEntryDtoCopyWith<$Res> {
  factory _$RelatedEntryDtoCopyWith(
          _RelatedEntryDto value, $Res Function(_RelatedEntryDto) then) =
      __$RelatedEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

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
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_RelatedEntryDto(
      id: id == freezed ? _value.id : id as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()
class _$_RelatedEntryDto implements _RelatedEntryDto {
  const _$_RelatedEntryDto({@required this.id, @required this.text})
      : assert(id != null),
        assert(text != null);

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

  @override
  _$RelatedEntryDtoCopyWith<_RelatedEntryDto> get copyWith =>
      __$RelatedEntryDtoCopyWithImpl<_RelatedEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RelatedEntryDtoToJson(this);
  }
}

abstract class _RelatedEntryDto implements RelatedEntryDto {
  const factory _RelatedEntryDto({@required String id, @required String text}) =
      _$_RelatedEntryDto;

  factory _RelatedEntryDto.fromJson(Map<String, dynamic> json) =
      _$_RelatedEntryDto.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  _$RelatedEntryDtoCopyWith<_RelatedEntryDto> get copyWith;
}
