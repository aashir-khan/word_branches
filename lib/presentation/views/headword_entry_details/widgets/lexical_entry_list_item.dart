import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/entry_information_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;

class LexicalEntryListItem extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;
  final Sense parentSense;

  const LexicalEntryListItem({
    Key key,
    @required this.headwordEntry,
    @required this.lexicalEntry,
    this.parentSense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      key: PageStorageKey<LexicalEntry>(lexicalEntry),
      title: Text(
        lexicalEntry.lexicalCategory.text,
        style: const TextStyle(color: colors.secondaryColor, fontWeight: FontWeight.bold),
      ),
      children: lexicalEntry.entries.iter
          .map(
            (entry) => Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: EntryInformationWidget(
                entry: entry,
                headwordEntry: headwordEntry,
              ),
            ),
          )
          .toList(),
    );
  }
}
