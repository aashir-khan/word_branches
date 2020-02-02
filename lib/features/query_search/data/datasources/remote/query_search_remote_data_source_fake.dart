import 'dart:math';

import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/dictionary_word_model_fake.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model_fake.dart';
import 'package:hive/hive.dart';
import 'package:faker/faker.dart';

class QuerySearchRemoteDataSourceFake implements QuerySearchRemoteDataSource {
  @override
  Future<QuerySearchResultsModel> getQuerySearchResults({String query, Map<String, dynamic> options = const {}}) async {
    final querySearchResultsModelFakeBox = await Hive.openBox(QuerySearchResultsModelFake.DB_IDENTIFIER);
    if (querySearchResultsModelFakeBox.isEmpty) {
      return _getQueryResultsHelper(query, querySearchResultsModelFakeBox);
    } else {
      final querySearchFakeModel = querySearchResultsModelFakeBox.get(0) as QuerySearchResultsModelFake;
      if (querySearchFakeModel?.results == null) {
        return _getQueryResultsHelper(query, querySearchResultsModelFakeBox);
      }

      List<DictionaryWordModelFake> wordsList = (querySearchFakeModel?.results as List<DictionaryWordModelFake> ?? [])
          .where((word) => word.label.startsWith(query))
          .toList();

      return Future.delayed(Duration(milliseconds: 1),
          () => QuerySearchResultsModelFake.fromFakeData(customFieldValues: {'results': wordsList}));
    }
  }

  Future<QuerySearchResultsModel> _getQueryResultsHelper(String query, Box querySearchResultsModelFakeBox) async {
    QuerySearchResultsModelFake result;
    List<DictionaryWordModelFake> wordsList = [];

    for (var i = 0; i < faker.randomGenerator.integer(100, min: 5); i++) {
      final probabilityOfWordContainingQuery = 100 / query.length / 100;
      final isWordContainQuery = Random().nextDouble() < probabilityOfWordContainingQuery;
      var wordLabel = isWordContainQuery ? '$query${faker.lorem.word()}' : faker.lorem.word();
      if (isWordContainQuery) {
        wordsList.add(
          DictionaryWordModelFake.fromFakeData(
            customFieldValues: {
              'id': wordLabel,
              'label': wordLabel,
            },
          ),
        );
      }
    }

    result = QuerySearchResultsModelFake.fromFakeData(customFieldValues: {'results': wordsList});
    querySearchResultsModelFakeBox.isEmpty
        ? await querySearchResultsModelFakeBox.add(result)
        : await querySearchResultsModelFakeBox.putAt(0, result);
    return Future.delayed(Duration(milliseconds: 1), () => result);
  }
}
