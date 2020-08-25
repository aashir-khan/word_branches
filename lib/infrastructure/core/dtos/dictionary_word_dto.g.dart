// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_word_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictionaryWordDto _$_$_DictionaryWordDtoFromJson(Map<String, dynamic> json) {
  return _$_DictionaryWordDto(
    id: json['id'] as String,
    label: json['label'] as String,
    isFavorited: json['isFavorited'] as bool,
  );
}

Map<String, dynamic> _$_$_DictionaryWordDtoToJson(
        _$_DictionaryWordDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'isFavorited': instance.isFavorited,
    };
