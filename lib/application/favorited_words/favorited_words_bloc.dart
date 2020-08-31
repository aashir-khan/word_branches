import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'favorited_words_event.dart';
part 'favorited_words_state.dart';
part 'favorited_words_bloc.freezed.dart';

const _localDatabaseProcessingFailureMessage = 'An error occurred trying to access/store a recently searched word';

@injectable
class FavoritedWordsBloc extends Bloc<FavoritedWordsEvent, FavoritedWordsState> {
  final IFavoritedWordsRepository favoritedWordsRepository;

  FavoritedWordsBloc({@required this.favoritedWordsRepository});

  @override
  FavoritedWordsState get initialState => const _Initial();

  @override
  Stream<FavoritedWordsState> mapEventToState(
    FavoritedWordsEvent event,
  ) async* {
    yield* event.when(
      getFavoritedWords: () async* {
        final resultEither = await favoritedWordsRepository.getFavoritedWords();

        yield resultEither.fold(
          (failure) => FavoritedWordsState.loadFailure(
            message: failure.when(
              localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
            ),
          ),
          (results) => FavoritedWordsState.loadFavoritedWordsSuccess(words: results),
        );
      },
      addFavoritedWord: (word) async* {
        final resultEither = await favoritedWordsRepository.addFavoritedWord(word);

        yield* resultEither.fold(
          (failure) async* {
            yield FavoritedWordsState.loadFailure(
              message: failure.when(
                localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
              ),
            );
          },
          (_) async* {
            final resultEither = await favoritedWordsRepository.getFavoritedWords();

            yield resultEither.fold(
              (failure) => FavoritedWordsState.loadFailure(
                message: failure.when(
                  localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
                ),
              ),
              (results) => FavoritedWordsState.loadFavoritedWordsSuccess(words: results),
            );
          },
        );
      },
      deleteFavoritedWord: (word) async* {
        final resultEither = await favoritedWordsRepository.deleteFavoritedWord(word);

        yield* resultEither.fold(
          (failure) async* {
            yield FavoritedWordsState.loadFailure(
              message: failure.when(
                localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
              ),
            );
          },
          (_) async* {
            final resultEither = await favoritedWordsRepository.getFavoritedWords();

            yield resultEither.fold(
              (failure) => FavoritedWordsState.loadFailure(
                message: failure.when(
                  localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
                ),
              ),
              (results) => FavoritedWordsState.loadFavoritedWordsSuccess(words: results),
            );
          },
        );
      },
    );
  }
}
