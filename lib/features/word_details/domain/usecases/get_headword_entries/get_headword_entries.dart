import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class GetHeadwordEntries extends UseCase<List<HeadwordEntry>, Params> {
  Future<dartz.Either<Failure, List<HeadwordEntry>>> call(Params params);
}

class Params extends Equatable {
  final DictionaryWord word;

  Params({@required this.word});

  @override
  List<Object> get props => [word];
}
