import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/lexical_entry_dto.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/dictionary_word_entries.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/lexical_entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/sense.dart';
import 'package:dr_words/mirage/features/dictionary_word_search.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:faker/faker.dart';

Future<void> setupMirage({bool isActive = false}) async {
  if (isActive == true) {
    const dictionaryWordsCount = 5;
    const headwordEntriesCount = 5;
    const lexicalEntriesCount = 5;

    final dictionaryWords = await createDictionarySearchWords(totalCount: dictionaryWordsCount);

    for (final word in dictionaryWords) {
      print(word.id);
      for (var i = 0; i < headwordEntriesCount; i++) {
        final List<LexicalEntryDto> lexicalEntries = [];
        for (var i = 0; i < lexicalEntriesCount; i++) {
          final senses = await createSenses(traits: ['withDefinitions', 'withNotes', 'withExamples', 'withSubsenses']);
          final entries = await createEntries(
            customFieldValues: {'senses': senses},
            traits: ['withEtymologies'],
          );

          final lexicalCategoryEnum = faker.randomGenerator.element(LexicalCategoryEnum.values);

          final lexicalCategory = IdTextDto(
            id: EnumToString.parse(lexicalCategoryEnum),
            text: EnumToString.parse(lexicalCategoryEnum),
          );

          final _lexicalEntries = await createLexicalEntries(customFieldValues: {
            'entries': entries,
            'lexicalCategory': lexicalCategory,
          });

          lexicalEntries.add(_lexicalEntries[0]);
        }

        await createDictionaryHeadwordEntries(customFieldValues: {'id': word.id, 'lexicalEntries': lexicalEntries});
      }
    }
  }
}
