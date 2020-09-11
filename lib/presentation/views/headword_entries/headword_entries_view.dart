import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../domain/core/entities/dictionary_word.dart';
import '../../core/constants/app_colors.dart' as colors;
import '../../core/widgets/loading_indicator.dart';
import '../../core/widgets/responsive_safe_area.dart';
import 'headword_entries_viewmodel.dart';
import 'widgets/favorited_word_toggle_card_widget/favorited_word_toggle_card_widget.dart';
import 'widgets/lexical_entry_information_preview_card_widget/lexical_entry_information_preview_card_widget.dart';

class HeadwordEntriesView extends StatelessWidget {
  final DictionaryWord word;

  const HeadwordEntriesView({@required this.word});

  Widget buildBody(BuildContext context, HeadwordEntriesViewModel model) {
    if (model.isBusy) {
      return LoadingIndicator();
    } else if (model.hasError) {
      return Center(child: Text(model.modelError as String));
    }

    return ResponsiveSafeArea(
      builder: (context, size) => Column(
        children: <Widget>[
          Expanded(
            flex: 35,
            child: FavoritedWordToggleCard(wordSearch: model.searchDetails),
          ),
          Expanded(
            flex: 65,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: model.lexicalEntriesWithHeadwordEntryNumber.size,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final currentItem = model.lexicalEntriesWithHeadwordEntryNumber[index];
                  return LexicalEntryInformationPreviewCard(
                    headwordEntry: model.searchDetails.results[currentItem.headwordNumber - 1],
                    lexicalEntry: currentItem.lexicalEntry,
                    headwordEntryNumber: currentItem.headwordNumber,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HeadwordEntriesViewModel>.reactive(
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.haSearchDetails ? '' : 'Headword Entries'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: model.navigateToHomeView,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () => Flushbar(
                  backgroundColor: colors.secondaryColorDark,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  flushbarPosition: FlushbarPosition.TOP,
                  title: 'Lexical Entries',
                  message:
                      'This screen lists all the lexical entries for the dictionary word. A lexical entry is a grouping of senses (a way in which an expression or a situation can be interpreted; a meaning) in a specific language, and a lexical category that relates to a word.',
                )..show(context),
              ),
            ],
          ),
          body: buildBody(context, model),
        );
      },
      viewModelBuilder: () => HeadwordEntriesViewModel(word: word),
    );
  }
}
