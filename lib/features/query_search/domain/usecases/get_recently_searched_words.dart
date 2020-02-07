import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_get_recently_searched_words.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(GetRecentlySearchedWordsImpl, env: Env.production)
@Bind.toType(GetRecentlySearchedWordsImpl, env: Env.development)
@Bind.toType(MockGetRecentlySearchedWords, env: Env.test)
@lazySingleton
@injectable
abstract class GetRecentlySearchedWords extends UseCase<List<DictionaryWord>, NoParams> {
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(NoParams params);
}

@lazySingleton
@injectable
class GetRecentlySearchedWordsImpl extends GetRecentlySearchedWords {
  final QuerySearchRepository repository;

  GetRecentlySearchedWordsImpl(this.repository);

  Future<dartz.Either<Failure, List<DictionaryWord>>> call(NoParams params) async {
    return await repository.getRecentlySearchedWords();
  }
}
