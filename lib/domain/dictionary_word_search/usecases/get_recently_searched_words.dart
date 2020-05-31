import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/failures.dart';
import 'package:dr_words/domain/core/usecase.dart';

abstract class GetRecentlySearchedWords extends UseCase<List<DictionaryWord>, NoParams> {
  @override
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(NoParams params);
}
