import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries_impl.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/mock_get_headword_entries.dart';
import 'package:dr_words/injection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(GetHeadwordEntriesImpl, env: Env.production)
@Bind.toType(GetHeadwordEntriesImpl, env: Env.development)
@Bind.toType(MockGetHeadwordEntries, env: Env.test)
@lazySingleton
@injectable
abstract class GetHeadwordEntries extends UseCase<List<HeadwordEntry>, Params> {
  Future<dartz.Either<Failure, List<HeadwordEntry>>> call(Params params);
}

class Params extends Equatable {
  final DictionaryWord word;

  Params({@required this.word});

  @override
  List<Object> get props => [word];
}
