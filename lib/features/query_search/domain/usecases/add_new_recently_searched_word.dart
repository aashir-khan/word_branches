import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/mock_add_new_recently_searched_word.dart';
import 'package:dr_words/injection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(AddNewRecentlySearchedWordImpl, env: Env.production)
@Bind.toType(AddNewRecentlySearchedWordImpl, env: Env.development)
@Bind.toType(MockAddNewRecentlySearchedWord, env: Env.test)
@lazySingleton
@injectable
abstract class AddNewRecentlySearchedWord extends UseCase<bool, Params> {
  Future<dartz.Either<Failure, bool>> call(Params params);
}

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

class Params extends Equatable {
  final DictionaryWord newWordToAdd;

  Params({@required this.newWordToAdd});

  @override
  List<Object> get props => [newWordToAdd];
}
