import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_remote_failure.dart';

abstract class QuerySearchRepository {
  Future<Either<QuerySearchRemoteFailure, List<DictionaryWord>>> getQuerySearchResults({
    String query,
  });

  Future<Either<QuerySearchLocalFailureLocalDatabaseProcessingFailure, List<DictionaryWord>>>
      getRecentlySearchedWords();

  Future<Either<QuerySearchLocalFailureLocalDatabaseProcessingFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd);
}
