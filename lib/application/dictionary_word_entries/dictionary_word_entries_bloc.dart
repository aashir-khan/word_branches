import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_repository.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'dictionary_word_entries_event.dart';
part 'dictionary_word_entries_state.dart';

part 'dictionary_word_entries_bloc.freezed.dart';

@injectable
class DictionaryWordEntriesBloc extends Bloc<DictionaryWordEntriesEvent, DictionaryWordEntriesState> {
  final IDictionaryWordEntriesRepository dictionaryWordEntriesRepository;

  DictionaryWordEntriesBloc({@required this.dictionaryWordEntriesRepository})
      : super(const DictionaryWordEntriesState.initial());

  @override
  Stream<DictionaryWordEntriesState> mapEventToState(
    DictionaryWordEntriesEvent event,
  ) async* {
    yield* event.when(getWordEntries: (word) async* {
      yield const DictionaryWordEntriesState.loadInProgress();
      final resultEither = await dictionaryWordEntriesRepository.getWordEntries(word);

      yield* resultEither.fold((failure) async* {
        yield DictionaryWordEntriesState.loadFailure(message: _mapFailureToMessage(failure));
      }, (results) async* {
        yield DictionaryWordEntriesState.loadEntriesSuccess(results: results);
      });
    });
  }

  String _mapFailureToMessage(DictionaryWordEntriesFailure failure) {
    return failure.when(
      serverError: () => 'An error occurred trying to get dictionary word entries',
      unexpected: () => 'Unexpected error occurred while trying to get dictionary word entries, please contact support',
    );
  }
}
