import 'dart:convert';
import 'dart:math';

import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
@injectable
class QuerySearchRemoteDataSourceFake implements QuerySearchRemoteDataSource {
  final SharedPreferences sharedPreferences;

  QuerySearchRemoteDataSourceFake({@required this.sharedPreferences});

  static const QUERY_SEARCH_RESULTS_MODEL_DB_IDENTIFIER = 'query_search_results_model';

  @override
  Future<QuerySearchResultsModel> getQuerySearchResults({
    String query,
    Map<String, dynamic> options = const {},
  }) async {
    final initialRawStringStoredData = sharedPreferences.getString(QUERY_SEARCH_RESULTS_MODEL_DB_IDENTIFIER) ?? '{}';
    Map<String, dynamic> initialStoredData = json.decode(initialRawStringStoredData);
    if (initialStoredData.isEmpty) {
      return _getQueryResultsHelper(query);
    } else {
      final nonEmptyExistingData = QuerySearchResultsModel.fromJson(initialStoredData);

      List<DictionaryWordModel> wordsList =
          (nonEmptyExistingData?.results ?? []).where((word) => word.label.startsWith(query)).toList();

      return Future.delayed(Duration(milliseconds: 1),
          () => QuerySearchResultsModel.fromFakeData(customFieldValues: {'results': wordsList}));
    }
  }

  Future<QuerySearchResultsModel> _getQueryResultsHelper(String query) async {
    QuerySearchResultsModel result;
    List<DictionaryWordModel> wordsList = [];

    for (var i = 0; i < faker.randomGenerator.integer(100, min: 5); i++) {
      final probabilityOfWordContainingQuery = 100 / query.length / 100;
      final isWordContainQuery = Random().nextDouble() < probabilityOfWordContainingQuery;
      var wordLabel = isWordContainQuery ? '$query${faker.lorem.word()}' : faker.lorem.word();
      if (isWordContainQuery) {
        wordsList.add(
          DictionaryWordModel.fromFakeData(
            customFieldValues: {
              'id': wordLabel,
              'label': wordLabel,
            },
          ),
        );
      }
    }

    result = QuerySearchResultsModel.fromFakeData(customFieldValues: {'results': wordsList});
    final resultEncoded = json.encode(result.toJson());
    sharedPreferences.setString(QUERY_SEARCH_RESULTS_MODEL_DB_IDENTIFIER, resultEncoded);
    return Future.delayed(Duration(milliseconds: 1), () => result);
  }
}
