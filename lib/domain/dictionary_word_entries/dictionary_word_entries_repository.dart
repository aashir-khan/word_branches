import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordEntriesRepository {
  Future<Either<DictionaryWordEntriesFailure, KtList<HeadwordEntry>>> getWordEntries(DictionaryWord word);
}
