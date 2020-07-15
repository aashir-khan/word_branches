// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntryDto _$_$_EntryDtoFromJson(Map<String, dynamic> json) {
  return _$_EntryDto(
    etymologies:
        (json['etymologies'] as List)?.map((e) => e as String)?.toList(),
    senses: (json['senses'] as List)
        ?.map((e) =>
            e == null ? null : SenseDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_EntryDtoToJson(_$_EntryDto instance) =>
    <String, dynamic>{
      'etymologies': instance.etymologies,
      'senses': instance.senses?.map((e) => e?.toJson())?.toList(),
    };
