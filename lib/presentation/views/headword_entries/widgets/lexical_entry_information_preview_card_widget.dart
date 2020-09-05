import 'package:auto_route/auto_route.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:dr_words/presentation/views/utils/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:kt_dart/collection.dart';

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
    void onTap() => ExtendedNavigator.root.push(Routes.lexicalEntryView,
        arguments: LexicalEntryViewArguments(
          headwordEntry: headwordEntry,
          lexicalEntry: lexicalEntry,
          headwordEntryNumber: headwordEntryNumber,
        ));
    return GestureDetector(
      onTap: onTap,
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
                  _buildNameWithCategory(context),
                  const SizedBox(height: 16),
                  _buildDefinitionsContent(context),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: onTap,
                color: colors.secondaryColor,
                textColor: Colors.white,
                child: const Text('More Info'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNameWithCategory(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        UIUtils.buildTextWithSuperscript(context, headwordEntry.wordLabel, headwordEntryNumber.toString()),
        Text(lexicalEntry.lexicalCategory.text, style: const TextStyle(fontStyle: FontStyle.italic)),
      ],
    );
  }

  Widget _buildDefinitionsContent(BuildContext context) {
    final List<Widget> widgets = [];
    final List<Sense> sensesWithDefinitions = [];
    final List<Sense> sensesWithoutDefinitions = [];

    for (final sense in lexicalEntry.entries.flatMap<Sense>((entry) => entry.senses).iter) {
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
                  ? '...And ${sensesWithoutDefinitions.length} more sense${sensesWithoutDefinitions.length > 1 ? "s" : ''}'
                  : 'With ${sensesWithoutDefinitions.length} sense${sensesWithoutDefinitions.length > 1 ? "s" : ''}',
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
