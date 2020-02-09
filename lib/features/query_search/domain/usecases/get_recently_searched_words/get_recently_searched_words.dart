import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/get_recently_searched_words_impl.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words/mock_get_recently_searched_words.dart';
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
