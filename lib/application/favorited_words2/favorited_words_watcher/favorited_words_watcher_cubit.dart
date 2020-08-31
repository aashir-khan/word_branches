// import 'package:bloc/bloc.dart';
// import 'package:dr_words/domain/core/entities/dictionary_word.dart';
// import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';

// part 'favorited_words_watcher_state.dart';
// part 'favorited_words_watcher_cubit.freezed.dart';

// const _localDatabaseProcessingFailureMessage = 'An error occurred trying to access/store a recently searched word';

// @injectable
// class FavoritedWordsWatcherCubit extends Cubit<FavoritedWordsWatcherState> {
//   final IFavoritedWordsRepository favoritedWordsRepository;
//   FavoritedWordsWatcherCubit({@required this.favoritedWordsRepository}) : super(const _Initial());

//   Future<void> getFavoritedWords() async {
//     emit(const FavoritedWordsWatcherState.loadInProgress());
//     final resultEither = await favoritedWordsRepository.getFavoritedWords();

//     resultEither.fold(
//       (failure) => emit(
//         FavoritedWordsWatcherState.loadFailure(
//           message: failure.when(
//             localDatabaseProcessingFailure: () => _localDatabaseProcessingFailureMessage,
//           ),
//         ),
//       ),
//       (results) => emit(FavoritedWordsWatcherState.loadFavoritedWordsSuccess(words: results)),
//     );
//   }
// }
