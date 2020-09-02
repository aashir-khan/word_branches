import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

class LexicalEntryListItemViewModel extends BaseViewModel {
  LexicalEntry _lexicalEntry;
  LexicalEntry get lexicalEntry => _lexicalEntry;
  String _lexicalCategoryText;
  String get lexicalCategoryText => _lexicalCategoryText;

  bool get hasAllEntriesWithMultipleSenses => lexicalEntry.entries.any((entry) => entry.senses.size > 1);

  void initialise(LexicalEntry entry) {
    _lexicalEntry = entry;
    _lexicalCategoryText = entry.lexicalCategory.text;
    notifyListeners();
  }
}
