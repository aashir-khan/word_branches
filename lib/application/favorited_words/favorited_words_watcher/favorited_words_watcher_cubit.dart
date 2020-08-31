import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'favorited_words_watcher_state.dart';
part 'favorited_words_watcher_cubit.freezed.dart';

// const _localDatabaseProcessingFailureMessage = 'An error occurred trying to access/store a recently searched word';

@injectable
class FavoritedWordsWatcherCubit extends Cubit<FavoritedWordsWatcherState> {
  final IFavoritedWordsRepository favoritedWordsRepository;
  FavoritedWordsWatcherCubit({@required this.favoritedWordsRepository})
      : super(const FavoritedWordsWatcherStateInitial()) {
    _favoritedWordsWatchStreamSubscription = favoritedWordsRepository.getFavoritedWords().listen((wordsEither) {
      final words = wordsEither.getOrElse(() => throw Exception());
      emit(FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: words));
    });
  }

  StreamSubscription<Either<FavoritedWordsFailure, KtList<DictionaryWord>>> _favoritedWordsWatchStreamSubscription;

  Future<void> getFavoritedWords() async {
    emit(const FavoritedWordsWatcherState.loadInProgress());
    await _favoritedWordsWatchStreamSubscription?.cancel();
    _favoritedWordsWatchStreamSubscription = favoritedWordsRepository.getFavoritedWords().listen((wordsEither) {
      final words = wordsEither.getOrElse(() => throw Exception());
      emit(FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: words));
    });

    // resultEither.fold(
    //   (failure) => emit(
    //     FavoritedWordsWatcherState.loadFailure(
    //       message: failure.when(
    //         localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
    //       ),
    //     ),
    //   ),
    //   (results) => emit(FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: results)),
    // );
  }

  @override
  Future<void> close() async {
    await _favoritedWordsWatchStreamSubscription.cancel();
    return super.close();
  }
}
