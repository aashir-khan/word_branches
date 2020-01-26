import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';

class GetRecentlySearchedWords
    extends UseCase<List<QuerySearchSingleResult>, NoParams> {
  final QuerySearchRepository repository;

  GetRecentlySearchedWords(this.repository);

  Future<Either<Failure, List<QuerySearchSingleResult>>> call(
      NoParams params) async {
    return await repository.getRecentlySearchedWords();
  }
}
