import 'dart:convert';

import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source_fake.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source_fake.dart';
import 'package:dr_words/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:faker/faker.dart';

abstract class Env {
  static const test = 'test';
  static const development = 'development';
  static const production = 'production';
}

Future<void> configureInjection(String environment) async {
  await configureManualInjection(environment);
  configureAutomaticInjection(environment);
}

final GetIt getIt = GetIt.instance;

@injectableInit
void configureAutomaticInjection(String environment) => $initGetIt(getIt, environment: environment);

Future<void> configureManualInjection(String environment) async {
  if (environment == Env.production) {
    await _registerProductionDependencies();
  }
  if (environment == Env.development) {
    await _registerDevelopmentDependencies();
  }
}

Future _registerProductionDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future _registerDevelopmentDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // Clear any local storage data
  await sharedPreferences.clear();
  await _setupEntities();
}

Future<void> _setupEntities() async {
  final dictionaryWords = await _createDictionaryWords();
  await _createHeadwordEntries(dictionaryWords);
}

Future<KtList<DictionaryWordDto>> _createDictionaryWords() async {
  final List<DictionaryWordDto> wordsList = [];
  const wordsCount = 50;

  for (var i = 0; i < wordsCount; i++) {
    final wordLabel = faker.lorem.word();

    wordsList.add(
      DictionaryWordDto.fromFakeData(customFieldValues: {'id': wordLabel, 'label': wordLabel}),
    );
  }

  final resultEncoded = wordsList.map((word) => json.encode(word.toJson())).toList();
  await getIt<SharedPreferences>()
      .setStringList(DictionaryWordSearchRemoteDataSourceFake.dictionaryWordDto, resultEncoded);

  return wordsList.toImmutableList();
}

Future<KtList<HeadwordEntryDto>> _createHeadwordEntries(KtList<DictionaryWordDto> dictionaryWords) async {
  final List<HeadwordEntryDto> headwordEntries = [];

  for (final dictionaryWord in dictionaryWords.iter) {
    for (var i = 0; i < faker.randomGenerator.integer(5, min: 5); i++) {
      headwordEntries.add(HeadwordEntryDto.fromFakeData(
        customFieldValues: {'id': dictionaryWord.id},
        traits: ['withLexicalEntries', 'withPronunciations'],
      ));
    }
  }

  final resultEncoded = headwordEntries.map((entryDto) => json.encode(entryDto.toJson())).toList();
  await getIt<SharedPreferences>()
      .setStringList(DictionaryWordEntriesRemoteDataSourceFake.dictionaryWordEntriesDto, resultEncoded);

  return headwordEntries.toImmutableList();
}
