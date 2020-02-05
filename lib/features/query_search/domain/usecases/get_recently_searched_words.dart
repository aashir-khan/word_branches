import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class GetRecentlySearchedWords extends UseCase<List<DictionaryWord>, NoParams> {
  final QuerySearchRepository repository;

  GetRecentlySearchedWords(this.repository);

  Future<Either<Failure, List<DictionaryWord>>> call(NoParams params) async {
    return await repository.getRecentlySearchedWords();
  }
}
