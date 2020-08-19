import 'package:auto_route/auto_route.dart';
import 'package:dr_words/application/dictionary_word_entries/dictionary_word_entries_cubit.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/core/widgets/loading_indicator.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HeadwordEntriesPage extends HookWidget {
  final DictionaryWord wordSelected;

  const HeadwordEntriesPage(this.wordSelected);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DictionaryWordEntriesCubit>()..getWordEntries(wordSelected),
      child: BlocBuilder<DictionaryWordEntriesCubit, DictionaryWordEntriesState>(
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.maybeWhen(
                  loadEntriesSuccess: (entries) => 'Headword Entries',
                  orElse: () => '',
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => ExtendedNavigator.root.replace(Routes.homePage),
              ),
              actions: <Widget>[
                Tooltip(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  message: 'A headword entry is a dictionary entry and all the data related to it',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.info),
                  ),
                ),
              ],
            ),
            body: state.when(
              initial: () => Container(),
              loadInProgress: () => LoadingIndicator(),
              loadEntriesSuccess: (entries) => Column(
                children: <Widget>[
                  // TODO: Implement favoriting dictionary word UI
                  Expanded(
                    flex: 37,
                    child: Container(color: colors.primaryColorLight),
                  ),
                  Expanded(
                    flex: 63,
                    child: ListView.builder(
                      itemCount: entries.size,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        leading: Icon(CustomIcons.checkmark_circle_icon, size: 40, color: colors.primaryColorDark),
                        title: Text('Headword Entry #${index + 1}', style: const TextStyle(fontSize: 20)),
                        onTap: () async {
                          final headwordEntry = entries[index];
                          await ExtendedNavigator.root.push(Routes.headwordEntryDetailsPage,
                              arguments: HeadwordEntryDetailsPageArguments(headwordEntry: headwordEntry));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              loadFailure: (message) => Center(child: Text(message)),
            ),
          );
        },
      ),
    );
  }
}
