import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/dictionary_word_entries.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/lexical_entry.dart';
import 'package:dr_words/mirage/features/dictionary_word_entries/sense.dart';
import 'package:dr_words/mirage/features/dictionary_word_search.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:faker/faker.dart';

Future<void> setupMirage({bool isActive = false}) async {
  if (isActive == true) {
    final sharedPreferences = getIt<SharedPreferences>();
    await sharedPreferences.clear();

    final dictionaryWords = await createDictionarySearchWords(totalCount: 50);
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

    final lexicalEntries = await createLexicalEntries(customFieldValues: {
      'entries': entries,
      'lexicalCategory': lexicalCategory,
    }, totalCount: 5);

    for (final word in dictionaryWords) {
      await createDictionaryHeadwordEntries(
          customFieldValues: {'id': word.id, 'lexicalEntries': lexicalEntries}, totalCount: 5);
    }
  }
}
