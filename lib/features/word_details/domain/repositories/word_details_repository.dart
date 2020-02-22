import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/word_details/data/repositories/mock_word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';

@Bind.toType(MockWordDetailsRepository, env: Env.test)
@lazySingleton
@injectable
abstract class WordDetailsRepository {
  Future<dartz.Either<Failure, List<HeadwordEntry>>> getHeadwordEntries(DictionaryWord word);
}
