// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headword_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HeadwordEntryDto _$_$_HeadwordEntryDtoFromJson(Map<String, dynamic> json) {
  return _$_HeadwordEntryDto(
    id: json['id'] as String,
    lexicalEntries: (json['lexicalEntries'] as List<dynamic>)
        .map((e) => LexicalEntryDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HeadwordEntryDtoToJson(
        _$_HeadwordEntryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lexicalEntries': instance.lexicalEntries.map((e) => e.toJson()).toList(),
    };
