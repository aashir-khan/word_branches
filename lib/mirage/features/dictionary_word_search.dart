import 'dart:convert';

import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_data_source_fake.dart';
import 'package:dr_words/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<DictionaryWordDto>> createDictionarySearchWords({
  Map<String, dynamic> customFieldValues = const {},
  int totalCount = 1,
}) async {
  final List<DictionaryWordDto> wordsList = [];

  for (var i = 0; i < totalCount; i++) {
    wordsList.add(DictionaryWordDto.fromFakeData(
      customFieldValues: customFieldValues,
    ));
  }

  final resultEncoded = wordsList.map((word) => json.encode(word.toJson())).toList();
  await getIt<SharedPreferences>()
      .setStringList(DictionaryWordSearchRemoteDataSourceFake.dictionaryWordDto, resultEncoded);

  return wordsList;
}
