import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordSearchLocalDataSource {
  Future<KtList<DictionaryWordDto>> getRecentlySearchedWords();
  Future<DictionaryWordDto> addNewRecentlySearchedWord(DictionaryWordDto newWordToAdd);
}
