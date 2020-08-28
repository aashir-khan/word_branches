import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/entry_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/pronunciation_dto.dart';
import 'package:enum_to_string/enum_to_string.dart';
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
    List<PronunciationDto> pronunciations,
  }) = _LexicalEntryDto;

  factory LexicalEntryDto.fromDomain(LexicalEntry lexicalEntry) {
    return LexicalEntryDto(
      entries: lexicalEntry.entries.map((entry) => EntryDto.fromDomain(entry)).asList(),
      lexicalCategory: IdTextDto.fromDomain(lexicalEntry.lexicalCategory),
      pronunciations:
          lexicalEntry?.pronunciations?.map((pronunciation) => PronunciationDto.fromDomain(pronunciation))?.asList(),
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

    if (traits.contains('withEntries')) {
      _entries = [];
      final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

      _lexicalCategory = IdTextDto(
        id: EnumToString.parse(lexicalCategoryEnum),
        text: EnumToString.parse(lexicalCategoryEnum),
      );

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _entries.add(EntryDto.fromFakeData());
      }
    }

    if (traits.contains('withPronunciations')) {
      _pronunciations = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _pronunciations
            .add(const PronunciationDto(audioFile: 'http://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3'));
      }
    }

    if (_entries == null || _lexicalCategory == null) {
      throw Exception();
    }

    return LexicalEntryDto(
      entries: _entries,
      pronunciations: _pronunciations,
      lexicalCategory: _lexicalCategory,
    );
  }
}

extension LexicalEntryDtoX on LexicalEntryDto {
  LexicalEntry toDomain() {
    return LexicalEntry(
      entries: entries.map((entry) => entry.toDomain()).toImmutableList(),
      pronunciations: pronunciations?.map((pronunciation) => pronunciation.toDomain())?.toImmutableList(),
      lexicalCategory: lexicalCategory.toDomain(),
    );
  }
}
