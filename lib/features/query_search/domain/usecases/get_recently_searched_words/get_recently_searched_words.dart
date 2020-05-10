import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/core/error/failures.dart';

abstract class GetRecentlySearchedWords extends UseCase<List<DictionaryWord>, NoParams> {
  Future<dartz.Either<Failure, List<DictionaryWord>>> call(NoParams params);
}
