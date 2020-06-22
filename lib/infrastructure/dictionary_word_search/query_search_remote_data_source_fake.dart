import 'dart:convert';
import 'dart:math';

import 'package:dr_words/domain/dictionary_word_search/query_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: QuerySearchRemoteDataSource, env: Env.development)
class QuerySearchRemoteDataSourceFake implements QuerySearchRemoteDataSource {
  final SharedPreferences sharedPreferences;

  QuerySearchRemoteDataSourceFake({@required this.sharedPreferences});

  static const querySearchResultsDbIdentifier = 'query_search_results';

  @override
  Future<KtList<DictionaryWordDto>> getQuerySearchResults({
    String query,
  }) async {
    final initialStringListStoredData = sharedPreferences.getStringList(querySearchResultsDbIdentifier) ?? [];

    final List<DictionaryWordDto> initialStoredData = initialStringListStoredData
        .map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>))
        .toList();

    if (initialStoredData.isEmpty) {
      return _getQueryResultsHelper(query);
    } else {
      final filteredWordsDtos = initialStoredData.where((word) => word.label.startsWith(query)).toImmutableList();

      return Future.delayed(const Duration(milliseconds: 1), () => filteredWordsDtos);
    }
  }

  Future<KtList<DictionaryWordDto>> _getQueryResultsHelper(String query) async {
    final List<DictionaryWordDto> wordsList = [];

    for (var i = 0; i < faker.randomGenerator.integer(100, min: 5); i++) {
      final probabilityOfWordContainingQuery = 100 / query.length / 100;
      final isWordContainQuery = Random().nextDouble() < probabilityOfWordContainingQuery;
      final wordLabel = isWordContainQuery ? '$query${faker.lorem.word()}' : faker.lorem.word();

      if (isWordContainQuery) {
        wordsList.add(
          DictionaryWordDto.fromFakeData(
            customFieldValues: {
              'id': wordLabel,
              'label': wordLabel,
            },
          ),
        );
      }
    }

    final resultEncoded = wordsList.map((word) => json.encode(word.toJson())).toList();
    await sharedPreferences.setStringList(querySearchResultsDbIdentifier, resultEncoded);
    return Future.delayed(const Duration(milliseconds: 1), () => wordsList.toImmutableList());
  }
}
