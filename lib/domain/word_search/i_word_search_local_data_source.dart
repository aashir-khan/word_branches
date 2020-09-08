import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IWordSearchLocalDataSource {
  Future<KtList<WordSearchDto>> getRecentSearches();
  Future<WordSearchDto> addRecentSearch(WordSearchDto search);
  Future<WordSearchDto> deleteRecentSearch(WordSearchDto search);
}
