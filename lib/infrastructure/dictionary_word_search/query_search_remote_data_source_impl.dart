import 'dart:convert';

import 'package:dr_words/domain/dictionary_word_search/query_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/models/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/exceptions.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/injection.dart';
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
  Future<List<DictionaryWordDto>> getQuerySearchResults({
    String query,
  }) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await client.get(
      'https://od-api.oxforddictionaries.com/api/v2/search/en-gb?q=$query',
      headers: headers,
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body) as Map<String, dynamic>;
      final words = List<DictionaryWordDto>.from([]);
      jsonBody['results'].forEach((word) => words.add(DictionaryWordDto.fromJson(word as Map<String, dynamic>)));
      return words;
    } else {
      throw ServerException();
    }
  }
}
