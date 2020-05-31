import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/dictionary_word_search/entities/query_search_results.dart';

abstract class QuerySearchRepository {
  Future<dartz.Either<Failure, QuerySearchResults>> getQuerySearchResults({
    String query,
  });

  Future<dartz.Either<Failure, List<DictionaryWord>>> getRecentlySearchedWords();

  Future<dartz.Either<Failure, bool>> addNewRecentlySearchedWord(DictionaryWord newWordToAdd);
}
