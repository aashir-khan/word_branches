import 'package:enum_to_string/enum_to_string.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';
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

extension LexicalEntryDtoFixture on LexicalEntryDto {
  static _LexicalEntryDtoFixtureFactory factory() => _LexicalEntryDtoFixtureFactory();
}

class _LexicalEntryDtoFixtureFactory extends FixtureFactory<LexicalEntryDto> {
  @override
  FixtureDefinition<LexicalEntryDto> definition() => define(
        (faker) {
          final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

          final lexicalCategory = IdTextDto(
            id: EnumToString.convertToString(lexicalCategoryEnum),
            text: EnumToString.convertToString(lexicalCategoryEnum),
          );

          return LexicalEntryDto(
            entries: [],
            lexicalCategory: lexicalCategory,
          );
        },
      );

  FixtureDefinition<LexicalEntryDto> withEntries({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            entries: EntryDtoFixture.factory().makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<LexicalEntryDto> withPronunciations({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            pronunciations: Iterable<int>.generate(totalCount)
                .map(
                  (_) =>
                      const PronunciationDto(audioFile: 'https://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3'),
                )
                .toList(),
          );
        },
      );

  FixtureDefinition<LexicalEntryDto> withDerivativeOf({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            derivativeOf: RelatedEntryDtoFixture.factory().makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<LexicalEntryDto> withCustomFields({
    List<EntryDto>? entries,
    IdTextDto? lexicalCategory,
  }) =>
      redefine(
        (dto) => dto.copyWith(
          entries: entries ?? dto.entries,
          lexicalCategory: lexicalCategory ?? dto.lexicalCategory,
        ),
      );
}
