import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordSearchRemoteDataSource {
  /// Calls the https://od-api.oxforddictionaries.com/api/v2/search/{source_lang} endpoint
  ///
  /// Throws a [ServerException] for all error codes
  Future<KtList<DictionaryWordDto>> getDictionaryWordSearchResults({String query});
}
