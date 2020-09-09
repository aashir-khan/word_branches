// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordSearchDto _$_$_WordSearchDtoFromJson(Map<String, dynamic> json) {
  return _$_WordSearchDto(
    word: json['word'] == null
        ? null
        : DictionaryWordDto.fromJson(json['word'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : HeadwordEntryDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isFavorited: json['isFavorited'] as bool ?? false,
    lastSearchedAt: json['lastSearchedAt'] as String,
  );
}

Map<String, dynamic> _$_$_WordSearchDtoToJson(_$_WordSearchDto instance) =>
    <String, dynamic>{
      'word': instance.word?.toJson(),
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
      'isFavorited': instance.isFavorited,
      'lastSearchedAt': instance.lastSearchedAt,
    };
