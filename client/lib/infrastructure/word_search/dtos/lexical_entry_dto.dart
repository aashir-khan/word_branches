import 'package:enum_to_string/enum_to_string.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/lexical_entry.dart';
import '../../core/dtos/id_text_dto.dart';
import 'entry_dto.dart';
import 'pronunciation_dto.dart';
import 'related_entry_dto.dart';

part 'lexical_entry_dto.freezed.dart';
part 'lexical_entry_dto.g.dart';

@freezed
class LexicalEntryDto with _$LexicalEntryDto {
  const factory LexicalEntryDto({
    required List<EntryDto> entries,
    required IdTextDto lexicalCategory,
    List<PronunciationDto>? pronunciations,
    List<RelatedEntryDto>? derivativeOf,
  }) = _LexicalEntryDto;

  factory LexicalEntryDto.fromDomain(LexicalEntry lexicalEntry) {
    return LexicalEntryDto(
      entries: lexicalEntry.entries.map((entry) => EntryDto.fromDomain(entry)).asList(),
      lexicalCategory: IdTextDto.fromDomain(lexicalEntry.lexicalCategory),
      pronunciations: lexicalEntry.pronunciations
          ?.map(
            (pronunciation) => PronunciationDto.fromDomain(pronunciation),
          )
          .asList(),
      derivativeOf: lexicalEntry.derivativeOf
          ?.map(
            (relatedEntry) => RelatedEntryDto.fromDomain(relatedEntry),
          )
          .asList(),
    );
  }

  factory LexicalEntryDto.fromJson(Map<String, dynamic> json) => _$LexicalEntryDtoFromJson(json);

  factory LexicalEntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    List<String> traits = const [],
  }) {
    var _entries = customFieldValues['entries'] as List<EntryDto>;
    var _pronunciations = customFieldValues['pronunciations'] as List<PronunciationDto>;
    var _lexicalCategory = customFieldValues['lexicalCategory'] as IdTextDto;
    var _derivativeOf = customFieldValues['derivativeOf'] as List<RelatedEntryDto>;

    if (traits.contains('withEntries')) {
      _entries = [];
      final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

      _lexicalCategory = IdTextDto(
        id: EnumToString.convertToString(lexicalCategoryEnum),
        text: EnumToString.convertToString(lexicalCategoryEnum),
      );

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _entries.add(EntryDto.fromFakeData());
      }
    }

    if (traits.contains('withPronunciations')) {
      _pronunciations = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _pronunciations
            .add(const PronunciationDto(audioFile: 'https://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3'));
      }
    }

    if (traits.contains('withDerivateOf')) {
      _derivativeOf = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _derivativeOf.add(RelatedEntryDto.fromFakeData());
      }
    }

    return LexicalEntryDto(
      entries: _entries,
      pronunciations: _pronunciations,
      lexicalCategory: _lexicalCategory,
      derivativeOf: _derivativeOf,
    );
  }
}

extension LexicalEntryDtoX on LexicalEntryDto {
  LexicalEntry toDomain() {
    return LexicalEntry(
      entries: entries.map((entry) => entry.toDomain()).toImmutableList(),
      pronunciations: pronunciations?.map((pronunciation) => pronunciation.toDomain()).toImmutableList(),
      lexicalCategory: lexicalCategory.toDomain(),
      derivativeOf: derivativeOf?.map((relatedEntry) => relatedEntry.toDomain()).toImmutableList(),
    );
  }
}
