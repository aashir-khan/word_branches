import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IFavoritedWordsRepository {
  Stream<Either<FavoritedWordsFailure, KtList<DictionaryWord>>> getFavoritedWords();
  Future<Either<FavoritedWordsFailure, DictionaryWord>> addFavoritedWord(DictionaryWord word);
  Future<Either<FavoritedWordsFailure, DictionaryWord>> deleteFavoritedWord(DictionaryWord favoritedWord);
}
