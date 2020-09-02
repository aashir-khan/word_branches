import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/lexical_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/dictionary_word_entries.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/lexical_entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/sense.dart';
import 'package:dr_words/mirage/features/dictionary_word_search.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:faker/faker.dart';

Future<void> setupMirage({bool isActive = false}) async {
  if (isActive == true) {
    final _favoritedWordsRepository = getIt<IFavoritedWordsRepository>();
    for (var i = 0; i < 10; i++) {
      await _favoritedWordsRepository.addFavoritedWord(DictionaryWord(id: i.toString(), label: i.toString()));
    }

    const dictionaryWordsCount = 1;
    const headwordEntriesCount = 5;
    const lexicalEntriesCount = 5;

    final dictionaryWords = await createDictionarySearchWords(totalCount: dictionaryWordsCount);

    for (final word in dictionaryWords) {
      // ignore: avoid_print
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
