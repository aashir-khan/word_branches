import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';

abstract class DictionaryWordSearchRepository {
  Future<Either<DictionaryWordSearchRemoteFailure, List<DictionaryWord>>> getDictionaryWordSearchResults({
    String query,
  });

  Future<Either<DictionaryWordSearchLocalFailure, List<DictionaryWord>>> getRecentlySearchedWords();

  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd);
}
