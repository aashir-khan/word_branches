import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/usecase.dart';
import 'package:dr_words/domain/dictionary_word_search/query_search_repository.dart';
import 'package:dr_words/domain/dictionary_word_search/usecases/get_recently_searched_words.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetRecentlySearchedWords)
class GetRecentlySearchedWordsImpl implements GetRecentlySearchedWords {
  final QuerySearchRepository repository;

  GetRecentlySearchedWordsImpl(this.repository);

  @override
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(NoParams params) async {
    return repository.getRecentlySearchedWords();
  }
}
