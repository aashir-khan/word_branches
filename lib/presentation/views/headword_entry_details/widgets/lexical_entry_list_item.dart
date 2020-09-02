import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/entry_information_widget.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/lexical_entry_list_item_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:stacked/stacked.dart';

class LexicalEntryListItem extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;

  const LexicalEntryListItem({
    Key key,
    @required this.headwordEntry,
    @required this.lexicalEntry,
  }) : super(key: key);

  Widget _buildWidget(LexicalEntryListItemViewModel model) {
    return model.hasAllEntriesWithMultipleSenses
        ? ExpansionTile(
            initiallyExpanded: true,
            key: PageStorageKey<LexicalEntry>(model.lexicalEntry),
            title: _buildLexicalCategoryText(model),
            children: _buildExpansionTileExpandedContent(model),
          )
        : Column(
            children: <Widget>[
              ListTile(title: _buildLexicalCategoryText(model)),
              _buildPaddingAwareWidget(child: _buildSingleEntryWidget(model.lexicalEntry.entries[0]))
            ],
          );
  }

  Widget _buildLexicalCategoryText(LexicalEntryListItemViewModel model) => Text(
        model.lexicalCategoryText,
        style: const TextStyle(color: colors.secondaryColor, fontWeight: FontWeight.bold),
      );

  Widget _buildSingleEntryWidget(Entry entry) => EntryInformationWidget(entry: entry, headwordEntry: headwordEntry);

  Widget _buildPaddingAwareWidget({@required Widget child}) =>
      Padding(padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16), child: child);

  List<Widget> _buildExpansionTileExpandedContent(LexicalEntryListItemViewModel model) {
    final List<Widget> widgets = [];

    for (final entry in model.lexicalEntry.entries.iter) {
      widgets.add(_buildPaddingAwareWidget(child: _buildSingleEntryWidget(entry)));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LexicalEntryListItemViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(lexicalEntry),
      builder: (context, model, child) => _buildWidget(model),
      viewModelBuilder: () => LexicalEntryListItemViewModel(),
    );
  }
}
