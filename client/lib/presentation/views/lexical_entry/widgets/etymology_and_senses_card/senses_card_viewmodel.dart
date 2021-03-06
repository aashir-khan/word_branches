import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:word_branches/presentation/router/app_router.router.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';
import '../../../../../injection.dart';

class SensesCardViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  late HeadwordEntry _headwordEntry;
  HeadwordEntry get headwordEntry => _headwordEntry;

  late Sense _sense;
  Sense get sense => _sense;

  late int _headwordEntryNumber;
  int get headwordEntryNumber => _headwordEntryNumber;

  void initialise({
    required HeadwordEntry initialHeadwordEntry,
    required Sense initialSense,
    required int initialHeadwordEntryNumber,
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
        parentSenseDefinition: _sense.definitions![0],
        subsenses: _sense.subsenses ?? emptyList(),
        headwordEntryNumber: _headwordEntryNumber,
      ),
    );
  }
}
