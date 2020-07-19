import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/lexical_entry_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/pronunciation_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:faker/faker.dart';

part 'headword_entry_dto.freezed.dart';
part 'headword_entry_dto.g.dart';

@freezed
abstract class HeadwordEntryDto with _$HeadwordEntryDto {
  factory HeadwordEntryDto({
    @required String id,
    @required List<LexicalEntryDto> lexicalEntries,
    List<PronunciationDto> pronunciations,
  }) = _HeadwordEntryDto;

  factory HeadwordEntryDto.fromDomain(HeadwordEntry headwordEntry) {
    return HeadwordEntryDto(
      id: headwordEntry.id,
      lexicalEntries:
          headwordEntry.lexicalEntries.map((lexicalEntry) => LexicalEntryDto.fromDomain(lexicalEntry)).asList(),
      pronunciations:
          headwordEntry.pronunciations.map((pronunciation) => PronunciationDto.fromDomain(pronunciation)).asList(),
    );
  }

  factory HeadwordEntryDto.fromJson(Map<String, dynamic> json) => _$HeadwordEntryDtoFromJson(json);

  factory HeadwordEntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
  }) {
    String id;
    List<LexicalEntryDto> lexicalEntries;
    List<PronunciationDto> pronunciations;

    final lexicalEntriesCount = (options['lexicalEntriesCount'] ?? faker.randomGenerator.integer(5, min: 1)) as int;
    final pronunciationsCount = (options['pronunciationsCount'] ?? faker.randomGenerator.integer(5)) as int;

    id = (customFieldValues['id'] ?? faker.lorem.word()) as String;

    if (customFieldValues['lexicalEntries'] != null) {
      lexicalEntries = customFieldValues['lexicalEntries'] as List<LexicalEntryDto>;
    } else {
      for (var i = 0; i < lexicalEntriesCount; i++) {
        lexicalEntries.add(
          LexicalEntryDto.fromFakeData(
              customFieldValues: (customFieldValues['lexicalEntries'] ?? {}) as Map<String, dynamic>,
              options: (customFieldValues['lexicalEntriesOptions'] ?? {}) as Map<String, dynamic>),
        );
      }
    }

    if (customFieldValues['pronunciations'] != null) {
      pronunciations = customFieldValues['pronunciations'] as List<PronunciationDto>;
    } else {
      for (var i = 0; i < pronunciationsCount; i++) {
        pronunciations.add(PronunciationDto.fromFakeData());
      }
    }

    return HeadwordEntryDto(id: id, lexicalEntries: lexicalEntries, pronunciations: pronunciations);
  }
}

extension HeadwordEntryDtoX on HeadwordEntryDto {
  HeadwordEntry toDomain() {
    return HeadwordEntry(
      id: id,
      lexicalEntries: lexicalEntries.map((lexicalEntry) => lexicalEntry.toDomain()).toImmutableList(),
      pronunciations: pronunciations?.map((pronunciation) => pronunciation.toDomain())?.toImmutableList(),
    );
  }
}
