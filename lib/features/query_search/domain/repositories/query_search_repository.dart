import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';

abstract class QuerySearchRepository {
  Future<dartz.Either<Failure, QuerySearchResults>> getQuerySearchResults({
    String query,
  });

  Future<dartz.Either<Failure, List<DictionaryWord>>> getRecentlySearchedWords();

  Future<dartz.Either<Failure, bool>> addNewRecentlySearchedWord(DictionaryWord newWordToAdd);
}
