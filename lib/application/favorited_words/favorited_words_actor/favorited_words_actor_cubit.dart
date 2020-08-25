import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorited_words_actor_state.dart';
part 'favorited_words_actor_cubit.freezed.dart';

const _localDatabaseProcessingFailureMessage =
    'An error occurred trying to access/store a recently searched word on your device for retrieving';

@injectable
class FavoritedWordsActorCubit extends Cubit<FavoritedWordsActorState> {
  final IFavoritedWordsRepository favoritedWordsRepository;
  FavoritedWordsActorCubit({@required this.favoritedWordsRepository}) : super(const _Initial());

  Future<void> addFavoritedWord(DictionaryWord word) async {
    emit(const FavoritedWordsActorState.actionInProgress());
    final resultEither = await favoritedWordsRepository.addFavoritedWord(word);

    resultEither.fold(
      (failure) => emit(
        FavoritedWordsActorState.actionFailure(
          message: failure.when(
            localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
          ),
        ),
      ),
      (favoritedWord) => emit(FavoritedWordsActorState.addSuccess(word: favoritedWord)),
    );
  }

  Future<void> deleteFavoritedWord(DictionaryWord word) async {
    emit(const FavoritedWordsActorState.actionInProgress());
    final resultEither = await favoritedWordsRepository.deleteFavoritedWord(word);

    resultEither.fold(
      (failure) => emit(
        FavoritedWordsActorState.actionFailure(
          message: failure.when(
            localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
          ),
        ),
      ),
      (favoritedWord) => emit(FavoritedWordsActorState.deleteSuccess(word: favoritedWord)),
    );
  }
}
