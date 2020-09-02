import 'package:auto_route/auto_route.dart';
import 'package:dr_words/presentation/views/headword_entries/headword_entries_viewmodel.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/core/widgets/loading_indicator.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:dr_words/presentation/views/headword_entries/widgets/favorited_word_toggle_card_widget.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

class HeadwordEntriesView extends StatelessWidget {
  final DictionaryWord wordSelected;

  const HeadwordEntriesView(this.wordSelected);

  Widget buildBody(BuildContext context, HeadwordEntriesViewModel model) {
    if (model.isBusy) {
      return LoadingIndicator();
    } else if (model.hasError) {
      return Center(child: Text(model.modelError as String));
    }

    final entries = model.entries ?? emptyList();

    return Column(
      children: <Widget>[
        Expanded(
          flex: 45,
          child: FavoritedWordToggleCard(word: wordSelected),
        ),
        Expanded(
          flex: 55,
          child: ListView.builder(
            itemCount: entries.size,
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              leading: Icon(CustomIcons.checkmark_circle_icon, size: 40, color: colors.primaryColorDark),
              title: Text('Headword Entry #${index + 1}', style: const TextStyle(fontSize: 20)),
              onTap: () => ExtendedNavigator.root.push(Routes.headwordEntryDetailsView,
                  arguments: HeadwordEntryDetailsViewArguments(headwordEntry: entries[index])),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HeadwordEntriesViewModel>.reactive(
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.hasEntries ? '' : 'Headword Entries'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => ExtendedNavigator.root.replace(Routes.homeView),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () => Flushbar(
                  backgroundColor: colors.secondaryColorDark,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  flushbarPosition: FlushbarPosition.TOP,
                  title: 'Headword Entries Page',
                  message: 'A headword entry is a dictionary entry and all the data related to it.',
                )..show(context),
              ),
            ],
          ),
          body: buildBody(context, model),
        );
      },
      viewModelBuilder: () => HeadwordEntriesViewModel(word: wordSelected),
    );
  }
}
