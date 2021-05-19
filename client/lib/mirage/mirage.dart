import 'package:enum_to_string/enum_to_string.dart';
import 'package:faker/faker.dart';
import 'package:word_branches/infrastructure/core/daos/headword_entry_dao.dart';
import 'package:word_branches/infrastructure/word_search/dtos/entry_dto.dart';
import 'package:word_branches/infrastructure/word_search/dtos/headword_entry_dto.dart';
import 'package:word_branches/infrastructure/word_search/dtos/sense_dto.dart';

import '../domain/word_search/entities/lexical_entry.dart';

import '../infrastructure/core/dtos/id_text_dto.dart';
import '../infrastructure/word_search/dtos/lexical_entry_dto.dart';
import '../injection.dart';
import 'features/word_search.dart';

Future<void> setupMirage({bool isActive = false}) async {
  if (isActive == true) {
    const wordsCount = 2;
    const headwordEntriesCount = 2;
    const lexicalEntriesCount = 5;

    final words = await createAndPersistDictionaryWords(totalCount: wordsCount);

    for (final word in words) {
      // ignore: avoid_print
      print(word.id);
      for (var i = 0; i < headwordEntriesCount; i++) {
        final List<LexicalEntryDto> lexicalEntries = [];
        for (var j = 0; j < lexicalEntriesCount; j++) {
          // TODO: Add ['withNotes', 'withExamples', 'withSubsenses'] traits to these as well
          final sensesDtos = SenseDtoFixture.factory().withDefinitions().makeMany(j + 1);

          // TODO: Add 'withEtymologies' trait to these entries too
          final entriesDtos = EntryDtoFixture.factory().withCustomFields(senses: sensesDtos).makeMany(1);

          final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

          final lexicalCategory = IdTextDto(
            id: EnumToString.convertToString(lexicalCategoryEnum),
            text: EnumToString.convertToString(lexicalCategoryEnum),
          );

          final lexicalEntryDto = LexicalEntryDtoFixture.factory()
              .withCustomFields(
                entries: entriesDtos,
                lexicalCategory: lexicalCategory,
              )
              .makeSingle();

          lexicalEntries.add(lexicalEntryDto);
        }

        final headwordEntriesDtos = HeadwordEntryDtoFixture.factory()
            .withCustomFields(
              id: word.id,
              lexicalEntries: lexicalEntries,
            )
            .makeMany(1);

        final headwordEntryDao = getIt<HeadwordEntryDao>();
        await headwordEntryDao.insertAll(headwordEntriesDtos);
      }
    }
  }
}
