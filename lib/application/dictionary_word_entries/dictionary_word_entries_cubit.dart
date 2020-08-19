import 'package:bloc/bloc.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'dictionary_word_entries_state.dart';
part 'dictionary_word_entries_cubit.freezed.dart';

@injectable
class DictionaryWordEntriesCubit extends Cubit<DictionaryWordEntriesState> {
  final IDictionaryWordEntriesRepository dictionaryWordEntriesRepository;

  DictionaryWordEntriesCubit({@required this.dictionaryWordEntriesRepository})
      : super(const DictionaryWordEntriesState.initial());

  Future<void> getWordEntries(DictionaryWord word) async {
    emit(const DictionaryWordEntriesState.loadInProgress());
    final resultEither = await dictionaryWordEntriesRepository.getWordEntries(word);

    resultEither.fold(
      (failure) => emit(DictionaryWordEntriesState.loadFailure(message: _mapFailureToMessage(failure))),
      (results) => emit(DictionaryWordEntriesState.loadEntriesSuccess(results: results)),
    );
  }
}

String _mapFailureToMessage(DictionaryWordEntriesFailure failure) {
  return failure.when(
    serverError: () => 'An error occurred trying to get dictionary word entries',
    networkError: () => 'Seems like you are not connected to the Internet',
    unexpected: () => 'Unexpected error occurred while trying to get dictionary word entries, please contact support',
  );
}
