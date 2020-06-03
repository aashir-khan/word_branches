import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';

abstract class QuerySearchRepository {
  Future<dartz.Either<Failure, List<DictionaryWord>>> getQuerySearchResults({
    String query,
  });

  Future<dartz.Either<Failure, List<DictionaryWord>>> getRecentlySearchedWords();

  Future<dartz.Either<Failure, DictionaryWord>> addNewRecentlySearchedWord(DictionaryWord newWordToAdd);
}
