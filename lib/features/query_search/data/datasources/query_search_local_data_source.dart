import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

abstract class QuerySearchLocalDataSource {
  Future<List<DictionaryWordModel>> getRecentlySearchedWords();
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd);
}

class QuerySearchLocalDataSourceImpl implements QuerySearchLocalDataSource {
  final Box<List<DictionaryWordModel>> hiveBox;

  static const FAVORITED_WORDS_DB_IDENTIFIER = 'favorited_words';

  QuerySearchLocalDataSourceImpl({@required this.hiveBox});

  @override
  Future<List<DictionaryWordModel>> getRecentlySearchedWords() {
    List<DictionaryWordModel> result = hiveBox.get(FAVORITED_WORDS_DB_IDENTIFIER, defaultValue: []);

    return Future.value(result);
  }

  @override
  Future<bool> addNewRecentlySearchedWord(DictionaryWordModel newWordToAdd) async {
    final currentSavedRecentlySearchedWords =
        hiveBox.get(FAVORITED_WORDS_DB_IDENTIFIER, defaultValue: [].cast<DictionaryWordModel>());
    currentSavedRecentlySearchedWords.add(newWordToAdd);
    await hiveBox.put(FAVORITED_WORDS_DB_IDENTIFIER, currentSavedRecentlySearchedWords);
    return Future.value(true);
  }
}
