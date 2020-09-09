import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/domain/word_search/word_search_failure.dart';
import 'package:dr_words/domain/word_search/word_search_local_failure.dart';
import 'package:dr_words/domain/word_search/word_search_remote_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IWordSearchRepository {
  Future<Either<WordSearchRemoteFailure, KtList<DictionaryWord>>> getWordSearchResults({String query});

  Future<Either<WordSearchLocalFailure, KtList<WordSearch>>> getRecentlySearchedWords();

  Future<Either<WordSearchFailure, WordSearch>> getSearchForWord(DictionaryWord word);

  Future<Either<WordSearchLocalFailure, Unit>> addRecentSearch(DictionaryWord word);

  Future<Either<WordSearchLocalFailure, Unit>> deleteRecentSearch(WordSearch search);
}
