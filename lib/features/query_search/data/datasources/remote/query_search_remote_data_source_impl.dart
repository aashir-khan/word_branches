import 'dart:convert';

import 'package:dr_words/core/error/exceptions.dart';
import 'package:dr_words/core/network/network_client_wrapper.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class QuerySearchRemoteDataSourceImpl implements QuerySearchRemoteDataSource {
  final AccountDetails accountDetails;
  final NetworkClientWrapper networkClient;

  QuerySearchRemoteDataSourceImpl({
    this.networkClient,
    this.accountDetails,
  });

  @override
  Future<QuerySearchResultsModel> getQuerySearchResults({
    String query,
    Map<String, dynamic> options = const {},
  }) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await networkClient.instance.get(
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
