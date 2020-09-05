import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:stacked/stacked.dart';

class EntryInformationWidgetViewModel extends BaseViewModel {
  Entry _entry;
  Entry get entry => _entry;

  bool get hasMultipleSenses => _entry.senses.size > 1;

  bool get hasAnyContentToDisplayInCard => _entry.etymologies != null || _entry.senses != null;
}
