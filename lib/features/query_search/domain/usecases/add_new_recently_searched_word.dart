import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class AddNewRecentlySearchedWord extends UseCase<bool, Params> {
  final QuerySearchRepository repository;

  AddNewRecentlySearchedWord(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await repository.addNewRecentlySearchedWord(params.newWordToAdd);
  }
}

class Params extends Equatable {
  final QuerySearchSingleResult newWordToAdd;

  Params({@required this.newWordToAdd});

  @override
  List<Object> get props => [newWordToAdd];
}
