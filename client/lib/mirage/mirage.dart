import 'package:enum_to_string/enum_to_string.dart';
import 'package:faker/faker.dart';

import '../domain/word_search/entities/lexical_entry.dart';
import '../infrastructure/core/dtos/dictionary_word_dto.dart';
import '../infrastructure/core/dtos/id_text_dto.dart';
import '../infrastructure/word_search/dtos/lexical_entry_dto.dart';
import 'features/dictionary_word_entries/dictionary_word_entries.dart';
import 'features/dictionary_word_entries/entry.dart';
import 'features/dictionary_word_entries/lexical_entry.dart';
import 'features/dictionary_word_entries/sense.dart';
import 'features/word_search.dart';

Future<void> setupMirage({bool isActive = false}) async {
  if (isActive == true) {
    const wordsCount = 2;
    const headwordEntriesCount = 2;
    const lexicalEntriesCount = 5;

    final List<DictionaryWordDto> words = [];

    for (var i = 0; i < wordsCount; i++) {
      final _words = await createDictionaryWords(
        customFieldValues: {'word': DictionaryWordDto.fromFakeData()},
      );
      words.add(_words[0]);
    }

    for (final word in words) {
      // ignore: avoid_print
      print(word.id);
      for (var i = 0; i < headwordEntriesCount; i++) {
        final List<LexicalEntryDto> lexicalEntries = [];
        for (var j = 0; j < lexicalEntriesCount; j++) {
          final senses = await createSenses(
            traits: ['withDefinitions', 'withNotes', 'withExamples', 'withSubsenses'],
            totalCount: j + 1,
          );

          final entries = await createEntries(customFieldValues: {'senses': senses}, traits: ['withEtymologies']);
          final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

          final lexicalCategory = IdTextDto(
            id: EnumToString.convertToString(lexicalCategoryEnum),
            text: EnumToString.convertToString(lexicalCategoryEnum),
          );

          final _lexicalEntries = await createLexicalEntries(customFieldValues: {
            'entries': entries,
            'lexicalCategory': lexicalCategory,
          });

          lexicalEntries.add(_lexicalEntries[0]);
        }

        await createDictionaryHeadwordEntries(
          customFieldValues: {
            'id': word.id,
            'lexicalEntries': lexicalEntries,
          },
        );
      }
    }
  }
}
