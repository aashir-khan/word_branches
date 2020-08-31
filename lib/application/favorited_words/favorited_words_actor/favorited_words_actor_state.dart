part of 'favorited_words_actor_cubit.dart';

@freezed
abstract class FavoritedWordsActorState with _$FavoritedWordsActorState {
  const factory FavoritedWordsActorState.inital() = _Initial;
  const factory FavoritedWordsActorState.actionInProgress() = _ActionInProgress;
  const factory FavoritedWordsActorState.addSuccess({@required DictionaryWord word}) = _AddSuccess;
  const factory FavoritedWordsActorState.deleteSuccess({@required DictionaryWord word}) = DeleteSuccess;
  const factory FavoritedWordsActorState.actionFailure({@required String message}) = _ActionFailure;
}
