import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IFavoritedWordsLocalDataSource {
  Future<KtList<WordSearchDto>> getFavoritedSearches();
  Future<WordSearchDto> addFavoritedSearch(WordSearchDto search);
  Future<WordSearchDto> deleteFavoritedSearch(WordSearchDto search);
}
