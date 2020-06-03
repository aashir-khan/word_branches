import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class GetQuerySearchResults extends UseCase<List<DictionaryWord>, Params> {
  @override
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(Params params);
}

class Params extends Equatable {
  final String query;

  const Params({
    @required this.query,
  });

  @override
  List<Object> get props => [query];
}
