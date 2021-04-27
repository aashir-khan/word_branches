import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' show ListInterop;

import '../../../domain/core/entities/word_search.dart';
import '../../word_search/dtos/headword_entry_dto.dart';
import 'dictionary_word_dto.dart';

part 'word_search_dto.freezed.dart';
part 'word_search_dto.g.dart';

@freezed
class WordSearchDto with _$WordSearchDto {
  const factory WordSearchDto({
    required DictionaryWordDto word,
    required List<HeadwordEntryDto> results,
    @Default(false) bool isFavorited,
    String? lastSearchedAt,
  }) = _WordSearchDto;

  factory WordSearchDto.fromDomain(WordSearch wordSearch) {
    return WordSearchDto(
      word: DictionaryWordDto.fromDomain(wordSearch.word),
      results: wordSearch.results.iter.map((result) => HeadwordEntryDto.fromDomain(result)).toList(),
      isFavorited: wordSearch.isFavorited,
      lastSearchedAt: wordSearch.lastSearchedAt?.toIso8601String(),
    );
  }

  factory WordSearchDto.fromJson(Map<String, dynamic> json) => _$WordSearchDtoFromJson(json);

  factory WordSearchDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final _word = customFieldValues['word'] as DictionaryWordDto;
    final _results = customFieldValues['results'] as List<HeadwordEntryDto>;
    final _isFavorited = customFieldValues['isFavorited'] as bool;
    final _lastSearchedAt = customFieldValues['lastSearchedAt'] as String;

    return WordSearchDto(
      word: _word,
      results: _results,
      isFavorited: _isFavorited,
      lastSearchedAt: _lastSearchedAt,
    );
  }
}

extension WordSearchDtoX on WordSearchDto {
  WordSearch toDomain() {
    return WordSearch(
      word: word.toDomain(),
      results: results.map((result) => result.toDomain()).toList().toImmutableList(),
      isFavorited: isFavorited,
      lastSearchedAt: lastSearchedAt == null ? null : DateTime.parse(lastSearchedAt!),
    );
  }
}
