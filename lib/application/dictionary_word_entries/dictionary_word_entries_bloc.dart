import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'dictionary_word_entries_event.dart';
part 'dictionary_word_entries_state.dart';
part 'dictionary_word_entries_bloc.freezed.dart';

@injectable
class DictionaryWordEntriesBloc extends Bloc<DictionaryWordEntriesEvent, DictionaryWordEntriesState> {
  final IDictionaryWordEntriesRepository dictionaryWordEntriesRepository;
  DictionaryWordEntriesBloc({@required this.dictionaryWordEntriesRepository});

  @override
  DictionaryWordEntriesState get initialState => const _DictionaryWordEntriesStateInitial();

  @override
  Stream<DictionaryWordEntriesState> mapEventToState(
    DictionaryWordEntriesEvent event,
  ) async* {
    yield* event.when(
      getWordEntries: (word) async* {
        final resultEither = await dictionaryWordEntriesRepository.getWordEntries(word);

        yield resultEither.fold(
          (failure) => DictionaryWordEntriesState.loadFailure(message: _mapFailureToMessage(failure)),
          (results) {
            return DictionaryWordEntriesState.loadEntriesSuccess(results: results);
          },
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

String _mapFailureToMessage(DictionaryWordEntriesFailure failure) {
  return failure.when(
    serverError: () => 'An error occurred trying to get dictionary word entries',
    networkError: () => 'Seems like you are not connected to the Internet',
    unexpected: () => 'Unexpected error occurred while trying to get dictionary word entries, please contact support',
  );
}