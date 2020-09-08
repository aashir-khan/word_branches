import 'package:dio/dio.dart';
import 'package:dr_words/domain/word_search/i_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/infrastructure/word_search/word_search_remote_exception.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IWordSearchRemoteDataSource, env: [Env.production])
class WordSearchRemoteDataSource implements IWordSearchRemoteDataSource {
  final AccountDetails accountDetails;
  final Dio dio;

  WordSearchRemoteDataSource({
    this.dio,
    this.accountDetails,
  });

  @override
  Future<KtList<WordSearchDto>> getWordSearchResults({String query}) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await dio.get(
      'https://od-api.oxforddictionaries.com/api/v2/search/en-us?q=$query',
      options: Options(headers: headers),
    );

    if (response.statusCode == 200) {
      final List<DictionaryWordDto> words = [];
      response.data['results'].forEach((word) => words.add(DictionaryWordDto.fromJson(word as Map<String, dynamic>)));
      return words.map((word) => WordSearchDto(word: word)).toImmutableList();
    } else if (response.statusCode == 404) {
      return emptyList();
    } else if (response.statusCode == 500) {
      throw const WordSearchRemoteException.serverError();
    } else {
      throw const WordSearchRemoteException.unexpected();
    }
  }
}
