import 'package:dartz/dartz.dart' as dartz;
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';

abstract class WordDetailsRepository {
  Future<dartz.Either<Failure, List<HeadwordEntry>>> getHeadwordEntries(DictionaryWord word);
}
