// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExampleDto _$_$_ExampleDtoFromJson(Map<String, dynamic> json) {
  return _$_ExampleDto(
    text: json['text'] as String,
    definitions:
        (json['definitions'] as List)?.map((e) => e as String)?.toList(),
    registers: (json['registers'] as List)
        ?.map((e) =>
            e == null ? null : IdTextDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExampleDtoToJson(_$_ExampleDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'definitions': instance.definitions,
      'registers': instance.registers?.map((e) => e?.toJson())?.toList(),
    };
