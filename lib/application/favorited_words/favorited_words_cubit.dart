import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'favorited_words_state.dart';
part 'favorited_words_cubit.freezed.dart';

const _localDatabaseProcessingFailureMessage = 'An error occurred trying to access/store a recently searched word';

@injectable
class FavoritedWordsCubit extends Cubit<FavoritedWordsState> {
  final IFavoritedWordsRepository favoritedWordsRepository;
  FavoritedWordsCubit({@required this.favoritedWordsRepository}) : super(const _Initial());

  Future<void> getFavoritedWords() async {
    final resultEither = await favoritedWordsRepository.getFavoritedWords();

    resultEither.fold(
      (failure) => emit(
        FavoritedWordsState.loadFailure(
          message: failure.when(
            localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
          ),
        ),
      ),
      (results) => emit(FavoritedWordsState.loadFavoritedWordsSuccess(words: results)),
    );
  }

  Future<void> addFavoritedWord(DictionaryWord word) async {
    final resultEither = await favoritedWordsRepository.addFavoritedWord(word);

    resultEither.fold(
      (failure) => emit(
        FavoritedWordsState.actionFailure(
          message: failure.when(
            localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
          ),
        ),
      ),
      (_) async {
        // emit(const FavoritedWordsState.addSuccess());
        final resultEither = await favoritedWordsRepository.getFavoritedWords();

        resultEither.fold(
          (failure) => emit(
            FavoritedWordsState.loadFailure(
              message: failure.when(
                localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
              ),
            ),
          ),
          (results) => emit(FavoritedWordsState.loadFavoritedWordsSuccess(words: results)),
        );
      },
    );
  }

  Future<void> deleteFavoritedWord(DictionaryWord word) async {
    final resultEither = await favoritedWordsRepository.deleteFavoritedWord(word);

    resultEither.fold(
      (failure) => emit(
        FavoritedWordsState.actionFailure(
          message: failure.when(
            localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
          ),
        ),
      ),
      (_) async {
        // emit(const FavoritedWordsState.deleteSuccess());
        final resultEither = await favoritedWordsRepository.getFavoritedWords();

        resultEither.fold(
          (failure) => emit(
            FavoritedWordsState.loadFailure(
              message: failure.when(
                localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
              ),
            ),
          ),
          (results) => emit(FavoritedWordsState.loadFavoritedWordsSuccess(words: results)),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    print('closing...');
    super.close();
  }
}
