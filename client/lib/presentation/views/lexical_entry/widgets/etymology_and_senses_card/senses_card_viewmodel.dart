import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';
import 'package:get/get.dart';
import 'package:word_branches/presentation/routes/app_pages.dart';
import 'package:word_branches/presentation/views/subsense_details/subsense_details_view.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';

class SensesCardViewModel extends BaseViewModel {
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
    await Get.toNamed(
      Routes.subsenseDetailsView,
      arguments: SubsenseDetailsViewRouteArgs(
        headwordEntry: _headwordEntry,
        parentSenseDefinition: _sense.definitions![0],
        // null operator not working here so using emptyList() to get compiler to cooperate
        subsenses: _sense.subsenses ?? emptyList(),
        headwordEntryNumber: _headwordEntryNumber,
      ),
    );
  }
}
