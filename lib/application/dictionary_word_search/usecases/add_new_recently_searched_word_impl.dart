import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';
import 'package:dr_words/domain/dictionary_word_search/usecases/add_new_recently_searched_word.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddNewRecentlySearchedWord)
class AddNewRecentlySearchedWordImpl implements AddNewRecentlySearchedWord {
  final QuerySearchRepository repository;

  AddNewRecentlySearchedWordImpl(this.repository);

  @override
  Future<dartz.Either<Failure, bool>> call(Params params) async {
    return repository.addNewRecentlySearchedWord(params.newWordToAdd);
  }
}
