import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

class HeadwordEntriesViewModel extends BaseViewModel {
  final DictionaryWord word;

  HeadwordEntriesViewModel({@required this.word});

  final IDictionaryWordEntriesRepository _dictionaryWordEntriesRepository = getIt<IDictionaryWordEntriesRepository>();

  KtList<HeadwordEntry> _entries;
  KtList<HeadwordEntry> get entries => _entries;
  bool get hasEntries => entries != null && !entries.isEmpty();

  Future initialize() async {
    await getWordEntries(word);
  }

  Future getWordEntries(DictionaryWord word) async {
    setBusy(true);
    final resultEither = await _dictionaryWordEntriesRepository.getWordEntries(word);

    resultEither.fold(
      (failure) => setError(_mapFailureToMessage(failure)),
      (results) {
        _entries = results;
        notifyListeners();
      },
    );

    setBusy(false);
  }
}

String _mapFailureToMessage(DictionaryWordEntriesFailure failure) {
  return failure.when(
    serverError: () => 'An error occurred trying to get dictionary word entries',
    networkError: () => 'Seems like you are not connected to the Internet',
    unexpected: () => 'Unexpected error occurred while trying to get dictionary word entries, please contact support',
  );
}
