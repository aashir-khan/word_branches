import 'package:kt_dart/kt.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:word_branches/presentation/router/app_router.router.dart';

import '../../../domain/core/entities/dictionary_word.dart';
import '../../../domain/core/entities/word_search.dart';
import '../../../domain/word_search/entities/lexical_entry.dart';
import '../../../domain/word_search/i_word_search_repository.dart';
import '../../../domain/word_search/word_search_failure.dart';
import '../../../injection.dart';

class HeadwordEntriesViewModel extends BaseViewModel {
  final DictionaryWord word;

  HeadwordEntriesViewModel({required this.word});

  final _wordSearchRepository = getIt<IWordSearchRepository>();
  final _navigationService = getIt<NavigationService>();

  WordSearch? _searchDetails;
  WordSearch? get searchDetails => _searchDetails;

  KtList<_LexicalEntryWithItsHeadwordNumber> get lexicalEntriesWithHeadwordEntryNumber {
    final List<_LexicalEntryWithItsHeadwordNumber> _lexicalEntriesWithHeadwordNumber = [];
    _searchDetails!.results.forEachIndexed((headwordEntryIndex, headwordEntry) {
      headwordEntry.lexicalEntries.forEach((lexicalEntry) {
        _lexicalEntriesWithHeadwordNumber.add(
          _LexicalEntryWithItsHeadwordNumber(
            dictionaryWordName: headwordEntry.wordLabel,
            lexicalEntry: lexicalEntry,
            headwordNumber: headwordEntryIndex + 1,
          ),
        );
      });
    });

    return _lexicalEntriesWithHeadwordNumber.toImmutableList();
  }

  Future initialize() async {
    await getWordEntries(word);
  }

  Future getWordEntries(DictionaryWord word) async {
    setBusy(true);
    final resultEither = await _wordSearchRepository.getSearchForWord(word);

    resultEither.fold(
      (failure) => setError(_mapFailureToMessage(failure)),
      (result) {
        _searchDetails = result;
        notifyListeners();
      },
    );

    setBusy(false);
  }

  Future navigateToHomeView() async {
    await _navigationService.replaceWith(Routes.homeView);
  }
}

String _mapFailureToMessage(WordSearchFailure failure) {
  return failure.when(
    local: (failure) => failure.when(
      localDatabaseProcessingFailure: () => 'An error occurred trying to get dictionary word entries',
    ),
    remote: (failure) => failure.when(
      serverError: () => 'An error occurred trying to get dictionary word entries',
      networkError: () => 'Seems like you are not connected to the Internet',
      unexpected: () => 'Unexpected error occurred while trying to get dictionary word entries, please contact support',
    ),
  );
}

class _LexicalEntryWithItsHeadwordNumber {
  final String dictionaryWordName;
  final LexicalEntry lexicalEntry;
  final int headwordNumber;

  _LexicalEntryWithItsHeadwordNumber({
    required this.dictionaryWordName,
    required this.lexicalEntry,
    required this.headwordNumber,
  });
}
