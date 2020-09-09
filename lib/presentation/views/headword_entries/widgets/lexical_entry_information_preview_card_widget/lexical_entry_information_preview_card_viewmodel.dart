import 'package:dr_words/domain/word_search/entities/headword_entry.dart';
import 'package:dr_words/domain/word_search/entities/lexical_entry.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LexicalEntryInformationPreviewCardViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  HeadwordEntry _headwordEntry;
  HeadwordEntry get headwordEntry => _headwordEntry;

  LexicalEntry _lexicalEntry;
  LexicalEntry get lexicalEntry => _lexicalEntry;

  int _headwordEntryNumber;
  int get headwordEntryNumber => _headwordEntryNumber;

  void initialise({
    @required HeadwordEntry initialHeadwordEntry,
    @required LexicalEntry initialLexicalEntry,
    @required int initialHeadwordEntryNumber,
  }) {
    _headwordEntry = initialHeadwordEntry;
    _lexicalEntry = initialLexicalEntry;
    _headwordEntryNumber = initialHeadwordEntryNumber;
    notifyListeners();
  }

  Future navigateToLexicalEntryView() async {
    await _navigationService.navigateTo(
      Routes.lexicalEntryView,
      arguments: LexicalEntryViewArguments(
        headwordEntry: _headwordEntry,
        lexicalEntry: _lexicalEntry,
        headwordEntryNumber: _headwordEntryNumber,
      ),
    );
  }
}