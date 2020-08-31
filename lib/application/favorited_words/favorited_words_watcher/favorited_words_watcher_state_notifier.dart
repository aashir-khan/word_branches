import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dr_words/application/favorited_words/favorited_words_watcher/favorited_words_watcher_cubit.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:state_notifier/state_notifier.dart';

@injectable
class FavoritedWordsWatcherStateNotifier extends StateNotifier<FavoritedWordsWatcherState> {
  final IFavoritedWordsRepository favoritedWordsRepository;
  FavoritedWordsWatcherStateNotifier({@required this.favoritedWordsRepository})
      : super(const FavoritedWordsWatcherStateInitial());

  Future<void> getFavoritedWords() async {
    await _favoritedWordsWatchStreamSubscription?.cancel();
    _favoritedWordsWatchStreamSubscription = favoritedWordsRepository.getFavoritedWords().listen((wordsEither) {
      final words = wordsEither.getOrElse(() => throw Exception());
      state = FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: words);
    });
  }

  StreamSubscription<Either<FavoritedWordsFailure, KtList<DictionaryWord>>> _favoritedWordsWatchStreamSubscription;

  Future<void> deleteFavoritedWord(DictionaryWord word) async {
    final resultEither = await favoritedWordsRepository.deleteFavoritedWord(word);

    print('hello');
  }

  @override
  void dispose() {
    _favoritedWordsWatchStreamSubscription.cancel();
    super.dispose();
  }
}
