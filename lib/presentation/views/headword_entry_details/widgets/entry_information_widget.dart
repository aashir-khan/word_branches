import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/entry_information_widget_viewmodel.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/etymology_and_senses_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;

class EntryInformationWidget extends StatelessWidget {
  final Entry entry;
  final HeadwordEntry headwordEntry;

  const EntryInformationWidget({
    Key key,
    @required this.headwordEntry,
    this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EntryInformationWidgetViewModel>.reactive(
      onModelReady: (model) => model.initialise(entry),
      builder: (context, model, child) {
        final senses = model.entry.senses;
        final List<Widget> widgets = [];

        widgets.add(ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          key: PageStorageKey(senses),
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: model.hasMultipleSenses && !model.allSensesVisible ? 2 : senses.size,
          itemBuilder: (context, index) {
            if (index == 1 && model.hasMultipleSenses && !model.allSensesVisible) {
              return RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                color: colors.secondaryColor,
                onPressed: model.showAllSenses,
                child: const Text(
                  'See More Senses',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }

            final sense = senses.get(index);

            return EtymologyAndSensesCard(
              headwordEntry: headwordEntry,
              senseNumber: index + 1,
              sense: sense,
              totalSenses: senses.size,
            );
          },
        ));

        if (model.entry?.etymologies != null) {
          widgets.addAll([
            const SizedBox(height: 16),
            EtymologyAndSensesCard(
              sense: null,
              headwordEntry: headwordEntry,
              heading: 'Etymologies',
              etymologyText: model.entry.etymologies.get(0),
            )
          ]);
        }

        return Column(children: widgets);
      },
      viewModelBuilder: () => EntryInformationWidgetViewModel(),
    );
  }
}
