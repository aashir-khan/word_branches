import 'dart:convert';

import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:http/http.dart' as http;

abstract class QuerySearchRemoteDataSource {
  /// Calls the https://od-api.oxforddictionaries.com/api/v2/search/{source_lang} endpoint
  ///
  /// Throws a [ServerException] for all error codes
  Future<QuerySearchResultsModel> getQuerySearchResults(
      {String query, Map<String, dynamic> options = const {}});
}

class QuerySearchRemoteDataSourceImpl implements QuerySearchRemoteDataSource {
  final http.Client client;
  final AccountDetails accountDetails;

  QuerySearchRemoteDataSourceImpl({
    this.client,
    this.accountDetails,
  });

  @override
  Future<QuerySearchResultsModel> getQuerySearchResults({
    String query,
    Map<String, dynamic> options = const {},
  }) async {
    final headers = accountDetails.oxfordAPIDetails['developer'];

    final response = await client.get(
      'https://od-api.oxforddictionaries.com/api/v2/search/en-gb?q=$query',
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QuerySearchResultsModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
