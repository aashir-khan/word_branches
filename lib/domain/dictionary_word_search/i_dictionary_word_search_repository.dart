import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordSearchRepository {
  Future<Either<DictionaryWordSearchRemoteFailure, KtList<DictionaryWord>>> getDictionaryWordSearchResults({
    String query,
  });

  Future<Either<DictionaryWordSearchLocalFailure, KtList<DictionaryWord>>> getRecentlySearchedWords();

  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd);

  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> deleteRecentlySearchedWord(
      DictionaryWord wordToDelete);
}
