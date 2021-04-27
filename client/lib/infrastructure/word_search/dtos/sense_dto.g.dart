// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SenseDto _$_$_SenseDtoFromJson(Map<String, dynamic> json) {
  return _$_SenseDto(
    definitions: (json['definitions'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    notes: (json['notes'] as List<dynamic>?)
        ?.map((e) => TextTypeDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    examples: (json['examples'] as List<dynamic>?)
        ?.map((e) => ExampleDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    subsenses: (json['subsenses'] as List<dynamic>?)
        ?.map((e) => SenseDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    registers: (json['registers'] as List<dynamic>?)
        ?.map((e) => IdTextDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    regions: (json['regions'] as List<dynamic>?)
        ?.map((e) => IdTextDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    crossReferenceMarkers: (json['crossReferenceMarkers'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_SenseDtoToJson(_$_SenseDto instance) =>
    <String, dynamic>{
      'definitions': instance.definitions,
      'notes': instance.notes?.map((e) => e.toJson()).toList(),
      'examples': instance.examples?.map((e) => e.toJson()).toList(),
      'subsenses': instance.subsenses?.map((e) => e.toJson()).toList(),
      'registers': instance.registers?.map((e) => e.toJson()).toList(),
      'regions': instance.regions?.map((e) => e.toJson()).toList(),
      'crossReferenceMarkers': instance.crossReferenceMarkers,
    };
