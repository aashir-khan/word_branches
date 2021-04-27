import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:word_branches/domain/core/entities/dictionary_word.dart';
import '../../core/constants/app_colors.dart' as colors;
import '../../core/widgets/loading_indicator.dart';
import '../../core/widgets/responsive_safe_area.dart';
import 'headword_entries_viewmodel.dart';
import 'widgets/favorited_word_toggle_card_widget/favorited_word_toggle_card_widget.dart';
import 'widgets/lexical_entry_information_preview_card_widget/lexical_entry_information_preview_card_widget.dart';

class HeadwordEntriesView extends StatelessWidget {
  Widget buildBody(BuildContext context, HeadwordEntriesViewModel model) {
    if (model.isBusy) {
      return LoadingIndicator();
    } else if (model.hasError || model.searchDetails == null) {
      return Center(child: Text(model.modelError as String));
    }

    final searchDetails = model.searchDetails!;

    return ResponsiveSafeArea(
      builder: (context, size) => Column(
        children: <Widget>[
          Expanded(
            flex: 35,
            child: FavoritedWordToggleCard(wordSearch: searchDetails),
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
                    headwordEntry: model.searchDetails!.results[currentItem.headwordNumber - 1],
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
            title: Text(model.searchDetails != null ? '' : 'Headword Entries'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: model.navigateToHomeView,
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.info),
                onPressed: () => Flushbar(
                  backgroundColor: colors.secondaryColorDark,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  flushbarPosition: FlushbarPosition.TOP,
                  message:
                      'This screen lists all the possible parts of speech for a word in one or more contexts. The superscripts define the context while the tag on the right define its part of speech.',
                )..show(context),
              ),
            ],
          ),
          body: buildBody(context, model),
        );
      },
      viewModelBuilder: () {
        final arguments = Get.arguments as HeadwordEntriesViewRouteArgs;
        final word = arguments.word;
        return HeadwordEntriesViewModel(word: word);
      },
    );
  }
}

class HeadwordEntriesViewRouteArgs {
  const HeadwordEntriesViewRouteArgs({required this.word});

  final DictionaryWord word;
}
