import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class AddNewRecentlySearchedWord extends UseCase<bool, Params> {
  Future<dartz.Either<Failure, bool>> call(Params params);
}

class Params extends Equatable {
  final DictionaryWord newWordToAdd;

  Params({@required this.newWordToAdd});

  @override
  List<Object> get props => [newWordToAdd];
}
