import 'package:dio/dio.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_exception.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IDictionaryWordSearchRemoteDataSource, env: [Env.production])
class DictionaryWordSearchRemoteDataSource implements IDictionaryWordSearchRemoteDataSource {
  final AccountDetails accountDetails;
  final Dio dio;

  DictionaryWordSearchRemoteDataSource({
    this.dio,
    this.accountDetails,
  });

  @override
  Future<KtList<DictionaryWordDto>> getDictionaryWordSearchResults({
    String query,
  }) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await dio.get(
      'https://od-api.oxforddictionaries.com/api/v2/search/en-us?q=$query',
      options: Options(headers: headers),
    );

    if (response.statusCode == 200) {
      final words = List<DictionaryWordDto>.from([]);
      response.data['results'].forEach((word) => words.add(DictionaryWordDto.fromJson(word as Map<String, dynamic>)));
      return words.toImmutableList();
    } else if (response.statusCode == 404) {
      return emptyList();
    } else if (response.statusCode == 500) {
      throw const DictionaryWordSearchRemoteException.serverError();
    } else {
      throw const DictionaryWordSearchRemoteException.unexpected();
    }
  }
}
