import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/lexical_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';
import '../../../../core/constants/app_colors.dart' as colors;
import '../../../utils/ui_utils.dart';
import 'lexical_entry_information_preview_card_viewmodel.dart';

class LexicalEntryInformationPreviewCard extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;
  final int headwordEntryNumber;

  const LexicalEntryInformationPreviewCard({
    Key key,
    @required this.headwordEntry,
    @required this.headwordEntryNumber,
    @required this.lexicalEntry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LexicalEntryInformationPreviewCardViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(
        initialHeadwordEntry: headwordEntry,
        initialLexicalEntry: lexicalEntry,
        initialHeadwordEntryNumber: headwordEntryNumber,
      ),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: model.navigateToLexicalEntryView,
          child: Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              side: BorderSide(color: colors.primaryColorLight),
            ),
            elevation: 5,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildNameWithCategory(context, model),
                      const SizedBox(height: 16),
                      _buildDefinitionsContent(context, model),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: model.navigateToLexicalEntryView,
                    color: colors.secondaryColor,
                    textColor: Colors.white,
                    child: const Text('More Info'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LexicalEntryInformationPreviewCardViewModel(),
    );
  }

  Widget _buildNameWithCategory(BuildContext context, LexicalEntryInformationPreviewCardViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        UIUtils.buildTextWithSuperscript(context, model.headwordEntry.wordLabel, model.headwordEntryNumber.toString()),
        Text(model.lexicalEntry.lexicalCategory.text, style: const TextStyle(fontStyle: FontStyle.italic)),
      ],
    );
  }

  Widget _buildDefinitionsContent(BuildContext context, LexicalEntryInformationPreviewCardViewModel model) {
    final List<Widget> widgets = [];
    final List<Sense> sensesWithDefinitions = [];
    final List<Sense> sensesWithoutDefinitions = [];

    for (final sense in model.lexicalEntry.entries.flatMap<Sense>((entry) => entry.senses).iter) {
      sense.definitions != null ? sensesWithDefinitions.add(sense) : sensesWithoutDefinitions.add(sense);
    }

    final _definitionsTextStyle = Theme.of(context).textTheme.subtitle1.copyWith(height: 1.5);

    for (final senseWithDefinition in sensesWithDefinitions) {
      widgets.add(
        Text(
          '- ${senseWithDefinition.definitions[0].capitalize()}',
          style: _definitionsTextStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );
    }

    if (sensesWithoutDefinitions.isNotEmpty) {
      widgets.addAll(
        [
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Text(
              sensesWithDefinitions.isNotEmpty
                  ? '...And ${sensesWithoutDefinitions.length} more meaning${sensesWithoutDefinitions.length > 1 ? "s" : ''}'
                  : 'With ${sensesWithoutDefinitions.length} meaning${sensesWithoutDefinitions.length > 1 ? "s" : ''}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          )
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}
