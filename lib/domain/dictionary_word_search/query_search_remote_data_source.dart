import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';

abstract class QuerySearchRemoteDataSource {
  /// Calls the https://od-api.oxforddictionaries.com/api/v2/search/{source_lang} endpoint
  ///
  /// Throws a [ServerException] for all error codes
  Future<List<DictionaryWordDto>> getQuerySearchResults({String query});
}
