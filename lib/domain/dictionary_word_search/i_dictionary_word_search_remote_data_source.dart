import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordSearchRemoteDataSource {
  Future<KtList<DictionaryWordDto>> getDictionaryWordSearchResults({String query});
}
