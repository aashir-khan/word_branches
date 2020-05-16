import 'dart:convert';

import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/internal/account_details/account_details.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: QuerySearchRemoteDataSource, env: Env.production)
class QuerySearchRemoteDataSourceImpl implements QuerySearchRemoteDataSource {
  final AccountDetails accountDetails;
  final http.Client client;

  QuerySearchRemoteDataSourceImpl({
    this.client,
    this.accountDetails,
  });

  @override
  Future<QuerySearchResultsModel> getQuerySearchResults({
    String query,
  }) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await client.get(
      'https://od-api.oxforddictionaries.com/api/v2/search/en-gb?q=$query',
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QuerySearchResultsModel.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }
}
