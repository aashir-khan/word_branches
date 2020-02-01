import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';

abstract class QuerySearchRepository {
  Future<Either<Failure, QuerySearchResults>> getQuerySearchResults({
    String query,
    Map<String, dynamic> options = const {},
  });

  Future<Either<Failure, List<DictionaryWord>>> getRecentlySearchedWords();

  Future<Either<Failure, bool>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd);
}
