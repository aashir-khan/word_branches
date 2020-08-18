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
    );
  }

  factory HeadwordEntryDto.fromJson(Map<String, dynamic> json) => _$HeadwordEntryDtoFromJson(json);

  factory HeadwordEntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    List<String> traits,
  }) {
    final _id = (customFieldValues['id'] ?? faker.lorem.word()) as String;
    var _lexicalEntries = customFieldValues['lexicalEntries'] as List<LexicalEntryDto>;

    if (traits.contains('withLexicalEntries')) {
      _lexicalEntries = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _lexicalEntries.add(
          LexicalEntryDto.fromFakeData(
            traits: ['withEntries'],
          ),
        );
      }
    }

    if (_lexicalEntries == null) {
      throw Exception();
    }

    return HeadwordEntryDto(
      id: _id,
      lexicalEntries: _lexicalEntries,
    );
  }
}

extension HeadwordEntryDtoX on HeadwordEntryDto {
  HeadwordEntry toDomain() {
    return HeadwordEntry(
      id: id,
      lexicalEntries: lexicalEntries.map((lexicalEntry) => lexicalEntry.toDomain()).toImmutableList(),
    );
  }
}
