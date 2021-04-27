// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LexicalEntryDto _$_$_LexicalEntryDtoFromJson(Map<String, dynamic> json) {
  return _$_LexicalEntryDto(
    entries: (json['entries'] as List<dynamic>)
        .map((e) => EntryDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    lexicalCategory:
        IdTextDto.fromJson(json['lexicalCategory'] as Map<String, dynamic>),
    pronunciations: (json['pronunciations'] as List<dynamic>?)
        ?.map((e) => PronunciationDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    derivativeOf: (json['derivativeOf'] as List<dynamic>?)
        ?.map((e) => RelatedEntryDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LexicalEntryDtoToJson(_$_LexicalEntryDto instance) =>
    <String, dynamic>{
      'entries': instance.entries.map((e) => e.toJson()).toList(),
      'lexicalCategory': instance.lexicalCategory.toJson(),
      'pronunciations':
          instance.pronunciations?.map((e) => e.toJson()).toList(),
      'derivativeOf': instance.derivativeOf?.map((e) => e.toJson()).toList(),
    };
