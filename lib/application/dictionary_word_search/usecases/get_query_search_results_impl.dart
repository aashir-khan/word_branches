import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';
import 'package:dr_words/domain/dictionary_word_search/usecases/get_query_search_results.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetQuerySearchResults)
class GetQuerySearchResultsImpl implements GetQuerySearchResults {
  final QuerySearchRepository repository;

  GetQuerySearchResultsImpl(this.repository);

  @override
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(Params params) async {
    return repository.getQuerySearchResults(
      query: params.query,
    );
  }
}
