import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/etymology_and_senses_card.dart';
import 'package:flutter/material.dart';

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
    final senses = entry.senses;
    final List<Widget> widgets = [];

    widgets.add(ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      key: PageStorageKey(senses),
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemCount: senses.size,
      itemBuilder: (context, index) {
        final sense = senses.get(index);

        return EtymologyAndSensesCard(
          headwordEntry: headwordEntry,
          senseNumber: index + 1,
          sense: sense,
          totalSenses: senses.size,
        );
      },
    ));

    if (entry?.etymologies != null) {
      widgets.addAll([
        const SizedBox(height: 16),
        EtymologyAndSensesCard(
          sense: null,
          headwordEntry: headwordEntry,
          heading: 'Etymologies',
          etymologyText: entry.etymologies.get(0),
        )
      ]);
    }

    return Column(children: widgets);
  }
}
