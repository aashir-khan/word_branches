import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/entry_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:faker/faker.dart';

part 'lexical_entry_dto.g.dart';
part 'lexical_entry_dto.freezed.dart';

@freezed
abstract class LexicalEntryDto with _$LexicalEntryDto {
  const factory LexicalEntryDto({
    @required List<EntryDto> entries,
    @required IdTextDto lexicalCategory,
  }) = _LexicalEntryDto;

  factory LexicalEntryDto.fromDomain(LexicalEntry lexicalEntry) {
    return LexicalEntryDto(
      entries: lexicalEntry.entries.map((entry) => EntryDto.fromDomain(entry)).asList(),
      lexicalCategory: IdTextDto.fromDomain(lexicalEntry.lexicalCategory),
    );
  }

  factory LexicalEntryDto.fromJson(Map<String, dynamic> json) => _$LexicalEntryDtoFromJson(json);

  factory LexicalEntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
  }) {
    List<EntryDto> entries;
    IdTextDto lexicalCategory;

    final entriesCount = (options['entriesCount'] ?? faker.randomGenerator.integer(5, min: 1)) as int;

    if (customFieldValues['entries'] != null) {
      entries = customFieldValues['entries'] as List<EntryDto>;
    } else {
      for (var i = 0; i < entriesCount; i++) {
        entries.add(
          EntryDto.fromFakeData(
              customFieldValues: (customFieldValues['entries'] ?? {}) as Map<String, dynamic>,
              options: (customFieldValues['entriesOptions'] ?? {}) as Map<String, dynamic>),
        );
      }
    }

    lexicalCategory = (customFieldValues['lexicalCategory'] ??
        LexicalEntryDto.fromFakeData(
            customFieldValues: (customFieldValues['lexicalCategory'] ?? {}) as Map<String, dynamic>)) as IdTextDto;

    return LexicalEntryDto(entries: entries, lexicalCategory: lexicalCategory);
  }
}

extension LexicalEntryDtoX on LexicalEntryDto {
  LexicalEntry toDomain() {
    return LexicalEntry(
      entries: entries.map((entry) => entry.toDomain()).toImmutableList(),
      lexicalCategory: lexicalCategory.toDomain(),
    );
  }
}
