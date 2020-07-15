// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexical_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LexicalEntryDto _$_$_LexicalEntryDtoFromJson(Map<String, dynamic> json) {
  return _$_LexicalEntryDto(
    entries: (json['entries'] as List)
        ?.map((e) =>
            e == null ? null : EntryDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lexicalCategory: json['lexicalCategory'] as String,
  );
}

Map<String, dynamic> _$_$_LexicalEntryDtoToJson(_$_LexicalEntryDto instance) =>
    <String, dynamic>{
      'entries': instance.entries?.map((e) => e?.toJson())?.toList(),
      'lexicalCategory': instance.lexicalCategory,
    };
