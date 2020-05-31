import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class AddNewRecentlySearchedWord extends UseCase<bool, Params> {
  @override
  Future<dartz.Either<Failure, bool>> call(Params params);
}

class Params extends Equatable {
  final DictionaryWord newWordToAdd;

  const Params({@required this.newWordToAdd});

  @override
  List<Object> get props => [newWordToAdd];
}
