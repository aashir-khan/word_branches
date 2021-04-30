import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:word_branches/presentation/router/app_router.router.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/lexical_entry.dart';
import '../../../../../injection.dart';

class LexicalEntryInformationPreviewCardViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  late HeadwordEntry _headwordEntry;
  HeadwordEntry get headwordEntry => _headwordEntry;

  late LexicalEntry _lexicalEntry;
  LexicalEntry get lexicalEntry => _lexicalEntry;

  late int _headwordEntryNumber;
  int get headwordEntryNumber => _headwordEntryNumber;

  void initialise({
    required HeadwordEntry initialHeadwordEntry,
    required LexicalEntry initialLexicalEntry,
    required int initialHeadwordEntryNumber,
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
