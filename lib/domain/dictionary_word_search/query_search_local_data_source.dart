import 'package:dr_words/infrastructure/dictionary_word_search/models/dictionary_word_model.dart';

abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordModel>> getRecentlySearchedWords();
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd);
}
