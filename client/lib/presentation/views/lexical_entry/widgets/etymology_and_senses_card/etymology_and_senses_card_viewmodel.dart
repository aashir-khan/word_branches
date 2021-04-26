import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';
import '../../../../../injection.dart';
import '../../../../routes/router.gr.dart';

class EtymologyAndSensesCardViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  HeadwordEntry _headwordEntry;
  HeadwordEntry get headwordEntry => _headwordEntry;

  Sense _sense;
  Sense get sense => _sense;

  int _headwordEntryNumber;
  int get headwordEntryNumber => _headwordEntryNumber;

  void initialise({
    @required HeadwordEntry initialHeadwordEntry,
    @required Sense initialSense,
    @required int initialHeadwordEntryNumber,
  }) {
    _headwordEntry = initialHeadwordEntry;
    _sense = initialSense;
    _headwordEntryNumber = initialHeadwordEntryNumber;
    notifyListeners();
  }

  Future navigateToSubsenseDetailsView() async {
    await _navigationService.navigateTo(
      Routes.subsenseDetailsView,
      arguments: SubsenseDetailsViewArguments(
        headwordEntry: _headwordEntry,
        parentSenseDefinition: _sense.definitions[0],
        subsenses: _sense.subsenses,
        headwordEntryNumber: _headwordEntryNumber,
      ),
    );
  }
}
