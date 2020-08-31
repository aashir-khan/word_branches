// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_word_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryWordDto _$DictionaryWordDtoFromJson(Map<String, dynamic> json) {
  return DictionaryWordDto(
    id: json['id'] as String,
    label: json['label'] as String,
    isFavorited: json['isFavorited'] as bool,
  );
}

Map<String, dynamic> _$DictionaryWordDtoToJson(DictionaryWordDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'isFavorited': instance.isFavorited,
    };
