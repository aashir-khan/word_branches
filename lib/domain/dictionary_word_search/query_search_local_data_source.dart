import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';

abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordDto>> getRecentlySearchedWords();
  Future<DictionaryWordDto> addNewRecentlySearchedWord(DictionaryWordDto newWordToAdd);
}
