import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/entities/dictionary_word.dart';
import '../core/entities/word_search.dart';
import 'word_search_failure.dart';
import 'word_search_local_failure.dart';
import 'word_search_remote_failure.dart';

abstract class IWordSearchRepository {
  Future<Either<WordSearchRemoteFailure, KtList<DictionaryWord>>> getWordSearchResults({required String query});

  Future<Either<WordSearchLocalFailure, KtList<WordSearch>>> getRecentlySearchedWords();

  Future<Either<WordSearchFailure, WordSearch>> getSearchForWord(DictionaryWord word);

  Future<Either<WordSearchLocalFailure, Unit>> addRecentSearch(DictionaryWord word);

  Future<Either<WordSearchLocalFailure, Unit>> deleteRecentSearch(WordSearch search);
}
