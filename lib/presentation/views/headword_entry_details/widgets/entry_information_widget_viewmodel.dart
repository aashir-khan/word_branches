import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:stacked/stacked.dart';

class EntryInformationWidgetViewModel extends BaseViewModel {
  Entry _entry;
  Entry get entry => _entry;

  bool get hasMultipleSenses => _entry.senses.size > 1;
  bool _allSensesVisible;
  bool get allSensesVisible => _allSensesVisible;

  void initialise(Entry entryPassedIn) {
    _entry = entryPassedIn;
    _allSensesVisible = !hasMultipleSenses;
    notifyListeners();
  }

  void showAllSenses() {
    _allSensesVisible = true;
    notifyListeners();
  }
}
