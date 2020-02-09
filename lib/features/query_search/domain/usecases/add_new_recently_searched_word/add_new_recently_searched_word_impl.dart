import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word/add_new_recently_searched_word.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class AddNewRecentlySearchedWordImpl implements AddNewRecentlySearchedWord {
  final QuerySearchRepository repository;

  AddNewRecentlySearchedWordImpl(this.repository);

  @override
  Future<dartz.Either<Failure, bool>> call(Params params) async {
    return await repository.addNewRecentlySearchedWord(params.newWordToAdd);
  }
}
