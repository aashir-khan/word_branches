import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IFavoritedWordsLocalDataSource {
  Stream<KtList<DictionaryWordDto>> getFavoritedWords();
  Future<DictionaryWordDto> addNewFavoritedWord(DictionaryWordDto word);
  Future<DictionaryWordDto> deleteFavoritedWord(DictionaryWordDto word);
}
