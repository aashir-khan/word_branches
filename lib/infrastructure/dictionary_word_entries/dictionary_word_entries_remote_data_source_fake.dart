import 'dart:convert';

import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IDictionaryWordEntriesRemoteDataSource, env: [Env.development])
class DictionaryWordEntriesRemoteDataSourceFake implements IDictionaryWordEntriesRemoteDataSource {
  final SharedPreferences sharedPreferences;

  DictionaryWordEntriesRemoteDataSourceFake({@required this.sharedPreferences});

  static const dictionaryWordEntriesDto = 'dictionary_word_entries_dto';

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWord word) {
    final rawStoredData = sharedPreferences.getStringList(dictionaryWordEntriesDto) ?? [];
    final parsedStoredData =
        rawStoredData.map((str) => HeadwordEntryDto.fromJson(json.decode(str) as Map<String, dynamic>));

    final entriesForWord = parsedStoredData.where((entry) => entry.id == word.id);
    return Future.delayed(const Duration(milliseconds: 1), () => entriesForWord.toImmutableList());
  }
}
